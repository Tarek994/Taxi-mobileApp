import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/messages.dart';
import 'package:ridy/query_result_view.dart';
import 'package:ridy/register/register.graphql.dart';
import 'package:ridy/schema.gql.dart';

class RegisterContactDetailsView extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? firstName = "";
  String? lastName = "";
  Enum$Gender? gender;
  String? certificateNumber = "";
  String? address = "";
  String? email = "";

  final Function() onContinue;
  final Function(bool loading) onLoadingStateUpdated;

  RegisterContactDetailsView(
      {Key? key,
      required this.firstName,
      required this.lastName,
      required this.gender,
      required this.certificateNumber,
      required this.address,
      required this.email,
      required this.onContinue,
      required this.onLoadingStateUpdated})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      S.of(context).register_contact_details_title,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 24),
                    Container(
                      constraints: const BoxConstraints(maxWidth: 200),
                      child: DropdownButtonFormField<Enum$Gender>(
                          value: gender,
                          decoration: InputDecoration(
                              isDense: true, labelText: S.of(context).gender),
                          items: <DropdownMenuItem<Enum$Gender>>[
                            DropdownMenuItem(
                              value: Enum$Gender.Male,
                              child: Text(S.of(context).gender_male),
                            ),
                            DropdownMenuItem(
                                value: Enum$Gender.Female,
                                child: Text(S.of(context).gender_female))
                          ],
                          onSaved: (Enum$Gender? value) {
                            gender = value;
                          },
                          onChanged: (value) {
                            gender = value;
                          }),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      initialValue: firstName,
                      onChanged: (value) => firstName = value,
                      validator: (value) => value?.isEmpty ?? true
                          ? S.of(context).form_required_field_error
                          : null,
                      decoration: InputDecoration(
                          isDense: true, labelText: S.of(context).firstname),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      initialValue: lastName,
                      onSaved: (value) => lastName = value,
                      validator: (value) => value?.isEmpty ?? true
                          ? S.of(context).form_required_field_error
                          : null,
                      decoration: InputDecoration(
                          isDense: true, labelText: S.of(context).lastname),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      initialValue: certificateNumber,
                      onChanged: (value) => certificateNumber = value,
                      decoration: InputDecoration(
                          isDense: true,
                          labelText: S.of(context).certificate_number),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      initialValue: email,
                      onChanged: (value) => email = value,
                      decoration: InputDecoration(
                          isDense: true, labelText: S.of(context).email),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      initialValue: address,
                      onChanged: (value) {
                        address = value;
                      },
                      decoration: InputDecoration(
                          isDense: true, labelText: S.of(context).address),
                    ),
                  ]),
            ),
          ),
        ),
        Mutation$UpdateProfile$Widget(
            options: WidgetOptions$Mutation$UpdateProfile(
              onCompleted: (result, parsedData) {
                onLoadingStateUpdated(false);
                onContinue();
              },
              onError: (error) => showOperationErrorMessage(context, error),
            ),
            builder: (runMutation, result) {
              return SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () async {
                    bool? isValid = _formKey.currentState?.validate();
                    if (isValid != true) return;
                    _formKey.currentState?.save();
                    onLoadingStateUpdated(true);
                    runMutation(Variables$Mutation$UpdateProfile(
                        input: Input$UpdateDriverInput(
                            firstName: firstName,
                            lastName: lastName,
                            email: email,
                            certificateNumber: certificateNumber,
                            gender: gender,
                            address: address)));
                  },
                  child: Text(S.of(context).action_continue),
                ),
              );
            })
      ],
    );
  }
}
