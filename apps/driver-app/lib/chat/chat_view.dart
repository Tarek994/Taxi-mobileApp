import 'package:client_shared/components/back_button.dart';
import 'package:client_shared/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:ridy/chat/chat.graphql.dart';
import 'package:ridy/chat/chat_cubit.dart';
import 'package:ridy/config.dart';
import 'package:ridy/graphql/order.fragment.graphql.dart';
import 'package:ridy/query_result_view.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:url_launcher/url_launcher.dart';

import 'package:flutter_gen/gen_l10n/messages.dart';

class ChatView extends StatelessWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatCubit(),
      lazy: false,
      child: Builder(builder: (context) {
        return Scaffold(
          body:
              Query$GetMessages$Widget(builder: (result, {refetch, fetchMore}) {
            if (result.isLoading || result.hasException) {
              return QueryResultView(result, refetch: refetch);
            }
            var cubit = context.read<ChatCubit>();
            var order = result.parsedData!.driver!.currentOrders.first;
            var messages = order.conversations
                .map((e) => e.toTextMessage(order.rider, order.driver))
                .toList();
            cubit.setMessages(messages);
            return Subscription$NewMessageReceived$Widget(
                onSubscriptionResult: (subscriptionResult, client) {
              if (subscriptionResult.parsedData != null) {
                var message = subscriptionResult.parsedData!.newMessageReceived
                    .toTextMessage(order.rider, order.driver);
                cubit.addMessage(message);
              }
            }, builder: (subscriptionResult) {
              return Mutation$SendMessage$Widget(options:
                  WidgetOptions$Mutation$SendMessage(
                      onCompleted: (result, parsedData) {
                final message = parsedData?.createOneOrderMessage;
                if (message == null) return;
                cubit.addMessage(
                    message.toTextMessage(order.rider, order.driver));
              }), builder: (runMutation, result) {
                return BlocBuilder<ChatCubit, List<types.TextMessage>>(
                  builder: (context, state) {
                    return Column(
                      children: [
                        SafeArea(
                            minimum: const EdgeInsets.all(16),
                            child: Row(
                              children: [
                                Mutation$UpdateLastSeenMessagesAt$Widget(
                                    builder: (runLastSeenMutation,
                                        resultLastSeenMutation) {
                                  return RidyBackButton(
                                    text: S.of(context).action_back,
                                    onPressed: () {
                                      runLastSeenMutation(
                                          Variables$Mutation$UpdateLastSeenMessagesAt(
                                              requestId: order.id));
                                      Navigator.pop(context);
                                    },
                                  );
                                }),
                                const Spacer(),
                                CupertinoButton(
                                    child: Container(
                                      padding: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                          color: CustomTheme
                                              .neutralColors.shade200,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Icon(
                                        Ionicons.call,
                                        color:
                                            CustomTheme.neutralColors.shade600,
                                      ),
                                    ),
                                    onPressed: () {
                                      if (order.rider?.mobileNumber == null) {
                                        return;
                                      }
                                      launchUrl(Uri.parse(
                                          "tel://+${order.rider!.mobileNumber}"));
                                    })
                              ],
                            )),
                        Expanded(
                          child: Chat(
                              messages: state,
                              theme: DefaultChatTheme(
                                  primaryColor: CustomTheme.primaryColors,
                                  inputTextDecoration: const InputDecoration(
                                      isDense: true,
                                      contentPadding: EdgeInsets.all(8),
                                      border: InputBorder.none),
                                  backgroundColor:
                                      CustomTheme.primaryColors.shade50,
                                  inputBackgroundColor:
                                      CustomTheme.neutralColors.shade200,
                                  inputTextColor: Colors.black),
                              onSendPressed: (text) {
                                runMutation(Variables$Mutation$SendMessage(
                                    content: text.text, requestId: order.id));
                              },
                              user: order.driver?.toUser() ??
                                  const types.User(
                                      id: '0',
                                      firstName: 'Unknown',
                                      lastName: 'Unknown')),
                        ),
                      ],
                    );
                  },
                );
              });
            });
          }),
        );
      }),
    );
  }
}

extension ChatDriverExtension on Fragment$ChatDriver {
  types.User toUser() => types.User(
      id: 'd$id',
      firstName: firstName,
      lastName: lastName,
      imageUrl: media == null ? null : serverUrl + media!.address);
}

extension ChatRiderExtension on Fragment$ChatRider {
  types.User toUser() => types.User(
      id: 'r$id',
      firstName: firstName,
      lastName: lastName,
      imageUrl: media == null ? null : serverUrl + media!.address);
}

extension ChatMeessageExtension on Fragment$ChatMessage {
  types.TextMessage toTextMessage(
          Fragment$ChatRider? rider, Fragment$ChatDriver? driver) =>
      types.TextMessage(
          id: id,
          text: content,
          author: (sentByDriver ? driver?.toUser() : rider?.toUser()) ??
              const types.User(
                  id: '0', firstName: 'Unknown', lastName: 'Unknown'));
}
