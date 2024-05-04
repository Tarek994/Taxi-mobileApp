import 'package:client_shared/components/ridy_banner.dart';
import 'package:client_shared/config.dart';
import 'package:client_shared/theme/theme.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:country_codes/country_codes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:flutter_gen/gen_l10n/messages.dart';
import 'package:ridy/query_result_view.dart';
import 'package:ridy/register/register.graphql.dart';

import 'package:url_launcher/url_launcher.dart';

class RegisterPhoneNumberView extends StatefulWidget {
  final Function(String verificationId, String phoneNumber) onCodeSent;
  final Function() onLoggedIn;
  final Function(bool loading) onLoadingStateUpdated;

  const RegisterPhoneNumberView(
      {Key? key,
      required this.onCodeSent,
      required this.onLoggedIn,
      required this.onLoadingStateUpdated})
      : super(key: key);

  @override
  State<RegisterPhoneNumberView> createState() =>
      _RegisterPhoneNumberViewState();
}

class _RegisterPhoneNumberViewState extends State<RegisterPhoneNumberView> {
  bool agreedToTerms = false;
  String countryCode = !kIsWeb
      ? (CountryCodes.detailsForLocale().alpha2Code ?? defaultCountryCode)
      : defaultCountryCode;
  String? phoneNumber;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.of(context).register_number_title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 8),
          Text(
            S.of(context).register_number_subtitle,
            style: Theme.of(context).textTheme.labelMedium,
          ),
          const SizedBox(height: 24),
          Row(children: [
            Container(
              decoration: BoxDecoration(
                  color: CustomTheme.neutralColors.shade200,
                  borderRadius: BorderRadius.circular(10)),
              child: FormField<String?>(
                initialValue: countryCode,
                onSaved: (value) => countryCode = value ?? countryCode,
                builder: (state) => CountryCodePicker(
                  boxDecoration: BoxDecoration(
                      color: CustomTheme.neutralColors.shade100,
                      borderRadius: BorderRadius.circular(10)),
                  initialSelection: countryCode,
                  onChanged: (value) => state.didChange(value.code),
                ),
              ),
            ),
            const SizedBox(width: 5),
            Flexible(
              child: TextFormField(
                initialValue: phoneNumber,
                onSaved: (value) => phoneNumber = value,
                keyboardType: TextInputType.phone,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                decoration: InputDecoration(
                  isDense: true,
                  labelText: S.of(context).cell_number,
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return S.of(context).phone_number_empty;
                  }
                  return null;
                },
              ),
            ),
          ]),
          if (loginTermsAndConditionsUrl.isNotEmpty)
            RegistrationPhoneNumberTermsCheckbox(
              agreedToTerms: agreedToTerms,
              onAgreedChanged: (value) => setState(() => agreedToTerms = value),
            ),
          const Spacer(),
          SizedBox(
              width: double.infinity,
              child: Mutation$Login$Widget(
                options: WidgetOptions$Mutation$Login(
                  onCompleted: (result, parsedData) {
                    final jwt = parsedData?.login.jwtToken;
                    if (jwt == null) return;
                    Hive.box('user').put('jwt', jwt);
                    widget.onLoadingStateUpdated(false);
                    widget.onLoggedIn();
                  },
                  onError: (error) {
                    widget.onLoadingStateUpdated(false);
                    showOperationErrorMessage(context, error);
                  },
                ),
                builder: (runMutation, result) => ElevatedButton(
                    onPressed: ((loginTermsAndConditionsUrl.isNotEmpty &&
                            !agreedToTerms))
                        ? null
                        : () async {
                            if (!_formKey.currentState!.validate()) return;
                            _formKey.currentState?.save();
                            final String dialCode =
                                CountryCode.fromCountryCode(countryCode)
                                    .dialCode!;
                            final String fullPhoneNumber =
                                dialCode + phoneNumber!;
                            widget.onLoadingStateUpdated(true);
                            if (kIsWeb) {
                              final authResult = await FirebaseAuth.instance
                                  .signInWithPhoneNumber(fullPhoneNumber);
                              widget.onCodeSent(
                                  authResult.verificationId, fullPhoneNumber);
                            } else {
                              FirebaseAuth.instance.verifyPhoneNumber(
                                  phoneNumber: fullPhoneNumber,
                                  verificationCompleted: (PhoneAuthCredential
                                      phoneAuthCredential) async {
                                    final UserCredential cr = await FirebaseAuth
                                        .instance
                                        .signInWithCredential(
                                            phoneAuthCredential);
                                    final String firebaseToken =
                                        await cr.user!.getIdToken();
                                    runMutation(Variables$Mutation$Login(
                                        firebaseToken: firebaseToken));
                                  },
                                  verificationFailed:
                                      (FirebaseAuthException error) {
                                    widget.onLoadingStateUpdated(false);
                                    final snackBar = SnackBar(
                                        content: RidyBanner(
                                            error.message ??
                                                S
                                                    .of(context)
                                                    .message_unknown_error,
                                            type: BannerType.error));
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(snackBar);
                                  },
                                  codeSent: (String verificationId,
                                      int? forceResendingToken) {
                                    widget.onLoadingStateUpdated(false);
                                    widget.onCodeSent(
                                        verificationId, fullPhoneNumber);
                                  },
                                  codeAutoRetrievalTimeout:
                                      (String verificationId) {});
                            }
                          },
                    child: Text(S.of(context).action_continue)),
              ))
        ],
      ),
    );
  }
}

class RegistrationPhoneNumberTermsCheckbox extends StatelessWidget {
  final bool agreedToTerms;
  final Function(bool value) onAgreedChanged;

  const RegistrationPhoneNumberTermsCheckbox(
      {Key? key, required this.agreedToTerms, required this.onAgreedChanged})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: agreedToTerms,
            onChanged: (value) => onAgreedChanged(value ?? false)),
        Flexible(
          child: RichText(
              text: TextSpan(children: [
            TextSpan(
                style: const TextStyle(color: Colors.black),
                text: S.of(context).terms_and_condition_first_part),
            TextSpan(
                style: const TextStyle(color: Colors.blue),
                text: S.of(context).terms_and_conditions_clickable_part,
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    launchUrl(Uri.parse(loginTermsAndConditionsUrl));
                  })
          ])),
        ),
      ],
    );
  }
}
