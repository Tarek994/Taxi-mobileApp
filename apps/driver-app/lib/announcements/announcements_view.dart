import 'package:client_shared/components/back_button.dart';
import 'package:client_shared/components/empty_state_card_view.dart';
import 'package:client_shared/components/list_shimmer_skeleton.dart';
import 'package:client_shared/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:ridy/announcements/announcements.graphql.dart';
import 'package:shimmer/shimmer.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:flutter_gen/gen_l10n/messages.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AnnouncementsView extends StatelessWidget {
  const AnnouncementsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.only(top: 8, left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              RidyBackButton(text: S.of(context).action_back),
              const SizedBox(height: 16),
              Query$Announcements$Widget(
                  builder: (result, {refetch, fetchMore}) {
                if (result.isLoading) {
                  return Shimmer.fromColors(
                    baseColor: CustomTheme.neutralColors.shade300,
                    highlightColor: CustomTheme.neutralColors.shade100,
                    enabled: true,
                    child: const ListShimmerSkeleton(),
                  );
                }
                final announcements = result.parsedData?.announcements;
                if (announcements?.isEmpty ?? true) {
                  return EmptyStateCard(
                      title: S.of(context).announcements_empty_state_title,
                      description: S.of(context).announcements_empty_state_body,
                      icon: Ionicons.notifications_off_circle);
                }
                return Expanded(
                  child: ListView.builder(
                      itemCount: announcements!.length,
                      itemBuilder: (context, index) {
                        return CupertinoButton(
                          padding: const EdgeInsets.all(0),
                          onPressed: (announcements[index].url?.isEmpty ?? true)
                              ? null
                              : () {
                                  launchUrl(
                                      Uri.parse(announcements[index].url!),
                                      mode: LaunchMode.externalApplication);
                                },
                          child: Card(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 10, top: 8),
                              child: ListTile(
                                title: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      DateFormat("yyyy-MM-dd")
                                          .format(announcements[index].startAt),
                                      style:
                                          Theme.of(context).textTheme.caption,
                                    ),
                                    Text(announcements[index].title),
                                  ],
                                ),
                                subtitle: Padding(
                                    padding: const EdgeInsets.only(top: 4),
                                    child:
                                        Text(announcements[index].description)),
                              ),
                            ),
                          ),
                        );
                      }),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
