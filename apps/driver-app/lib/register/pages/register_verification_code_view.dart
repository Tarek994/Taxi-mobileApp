import 'package:client_shared/components/ridy_banner.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:pinput/pinput.dart';

import 'package:flutter_gen/gen_l10n/messages.dart';
import 'package:ridy/query_result_view.dart';
import 'package:ridy/register/register.graphql.dart';

class RegisterVerificationCodeView extends StatefulWidget {
  final String verificationCodeId;
  final String phoneNumber;
  final Function() onLoggedIn;
  final Function(bool loading) onLoadingStateUpdated;

  const RegisterVerificationCodeView(
      {Key? key,
      required this.verificationCodeId,
      required this.phoneNumber,
      required this.onLoggedIn,
      required this.onLoadingStateUpdated})
      : super(key: key);

  @override
  State<RegisterVerificationCodeView> createState() =>
      _RegisterVerificationCodeViewState();
}

class _RegisterVerificationCodeViewState
    extends State<RegisterVerificationCodeView> {
  final FocusNode focusNode = FocusNode();

  @override
  void initState() {
    focusNode.requestFocus();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).register_verify_code_title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 8),
        Text(
          S.of(context).register_verify_code_subtitle(widget.phoneNumber),
          style: Theme.of(context).textTheme.labelMedium,
        ),
        const SizedBox(height: 24),
        Mutation$Login$Widget(
            options:
                WidgetOptions$Mutation$Login(onCompleted: (result, parsedData) {
              widget.onLoadingStateUpdated(true);
              final jwt = parsedData?.login.jwtToken;
              if (jwt == null) return;
              Hive.box('user').put('jwt', jwt);
              widget.onLoadingStateUpdated(false);
              widget.onLoggedIn();
            }, onError: (error) {
              widget.onLoadingStateUpdated(false);
              showOperationErrorMessage(context, error);
            }),
            builder: (runMutation, result) {
              return Pinput(
                focusNode: focusNode,
                length: 6,
                onCompleted: (value) async {
                  widget.onLoadingStateUpdated(true);
                  try {
                    final PhoneAuthCredential credential =
                        PhoneAuthProvider.credential(
                            verificationId: widget.verificationCodeId,
                            smsCode: value);
                    final UserCredential cr = await FirebaseAuth.instance
                        .signInWithCredential(credential);
                    final String firebaseToken = await cr.user!.getIdToken();
                    runMutation(
                        Variables$Mutation$Login(firebaseToken: firebaseToken));
                  } on FirebaseAuthException catch (e) {
                    widget.onLoadingStateUpdated(false);
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: RidyBanner(
                      e.message ?? '',
                      type: BannerType.error,
                    )));
                  }
                },
              );
            }),
        const Spacer(),
      ],
    );
  }
}
