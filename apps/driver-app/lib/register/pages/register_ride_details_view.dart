import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/messages.dart';
import 'package:ridy/query_result_view.dart';
import 'package:ridy/register/register.graphql.dart';
import 'package:ridy/schema.gql.dart';

class RegisterRideDetailsView extends StatelessWidget {
  final Function() onContinue;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final List<Query$GetDriver$carModels> models;
  final List<Query$GetDriver$carColors> colors;
  final Function(bool loading) onLoadingStateUpdated;

  String? carPlate;
  int? carProductionYear;
  String? carId;
  String? carColorId;

  RegisterRideDetailsView(
      {Key? key,
      required this.models,
      required this.colors,
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
                      S.of(context).register_ride_details_title,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 24),
                    Row(
                      children: [
                        Flexible(
                          child: TextFormField(
                            initialValue: carPlate,
                            onSaved: (value) => carPlate = value,
                            decoration: InputDecoration(
                                isDense: true,
                                labelText: S.of(context).plate_number),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Flexible(
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            initialValue: carProductionYear?.toString() ?? "",
                            onSaved: (value) {
                              carProductionYear =
                                  value == null ? null : int.tryParse(value);
                            },
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            decoration: InputDecoration(
                                isDense: true,
                                labelText: S.of(context).car_production_year),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 8),
                    DropdownButtonFormField<String>(
                      value: carId,
                      decoration: InputDecoration(
                          isDense: true, labelText: S.of(context).car_model),
                      items: models
                          .map((e) => DropdownMenuItem(
                              value: e.id, child: Text(e.name)))
                          .toList(),
                      onChanged: (String? id) => carId = id,
                    ),
                    const SizedBox(height: 8),
                    DropdownButtonFormField<String>(
                      value: carColorId,
                      decoration: InputDecoration(
                          isDense: true, labelText: S.of(context).car_color),
                      items: colors
                          .map((e) => DropdownMenuItem(
                              value: e.id, child: Text(e.name)))
                          .toList(),
                      onChanged: (String? id) => carColorId = id,
                    )
                  ]),
            ),
          ),
          Mutation$UpdateProfile$Widget(
              options: WidgetOptions$Mutation$UpdateProfile(
                  onCompleted: (result, parsedData) {
                    onContinue();
                  },
                  onError: (error) =>
                      showOperationErrorMessage(context, error)),
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
                              carId: carId,
                              carColorId: carColorId,
                              carPlate: carPlate,
                              carProductionYear: carProductionYear)));
                      onLoadingStateUpdated(false);
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
