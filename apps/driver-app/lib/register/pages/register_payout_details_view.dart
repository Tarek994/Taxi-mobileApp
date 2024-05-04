import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/messages.dart';
import 'package:ridy/query_result_view.dart';
import 'package:ridy/register/register.graphql.dart';
import 'package:ridy/schema.gql.dart';

class RegisterPayoutDetailsView extends StatelessWidget {
  final Function() onContinue;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? bankName;
  String? accountNumber;
  String? bankSwift;
  String? bankRoutingNumber;
  final Function(bool loading) onLoadingStateUpdated;

  RegisterPayoutDetailsView(
      {Key? key,
      required this.bankName,
      required this.accountNumber,
      required this.bankSwift,
      required this.bankRoutingNumber,
      required this.onContinue,
      required this.onLoadingStateUpdated})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      S.of(context).register_payout_details_title,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 24),
                    TextFormField(
                      initialValue: bankName,
                      decoration: InputDecoration(
                          isDense: true, labelText: S.of(context).bank_name),
                      onSaved: (value) => bankName = value,
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      initialValue: accountNumber,
                      decoration: InputDecoration(
                          isDense: true,
                          labelText: S.of(context).account_number),
                      onSaved: (value) => accountNumber = value,
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      initialValue: bankSwift,
                      decoration: InputDecoration(
                          isDense: true, labelText: S.of(context).bank_swift),
                      onSaved: (value) => bankSwift = value,
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      initialValue: bankRoutingNumber,
                      decoration: InputDecoration(
                          isDense: true,
                          labelText: S.of(context).bankRoutingNumber),
                      onSaved: (value) => bankRoutingNumber = value,
                    ),
                  ]),
            ),
          ),
          Mutation$UpdateProfile$Widget(
              options: WidgetOptions$Mutation$UpdateProfile(
                  onCompleted: (result, parsedData) {
                onLoadingStateUpdated(false);
                onContinue();
              }, onError: (error) {
                onLoadingStateUpdated(false);
                showOperationErrorMessage(context, error);
              }),
              builder: (runMutation, result) {
                return SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      bool? isValid = _formKey.currentState?.validate();
                      if (isValid != true) return;
                      _formKey.currentState?.save();
                      onLoadingStateUpdated(true);
                      runMutation(Variables$Mutation$UpdateProfile(
                          input: Input$UpdateDriverInput(
                              bankName: bankName,
                              accountNumber: accountNumber,
                              bankSwift: bankSwift,
                              bankRoutingNumber: bankRoutingNumber)));
                    },
                    child: Text(S.of(context).action_continue),
                  ),
                );
              })
        ],
      ),
    );
  }
}
