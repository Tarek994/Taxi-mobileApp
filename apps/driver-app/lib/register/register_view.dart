import 'package:client_shared/components/back_button.dart';
import 'package:client_shared/components/query_result_view.dart';
import 'package:client_shared/components/step_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/messages.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:ridy/register/pages/register_contact_details_view.dart';
import 'package:ridy/register/pages/register_payout_details_view.dart';
import 'package:ridy/register/pages/register_phone_number_view.dart';
import 'package:ridy/register/pages/register_ride_details_view.dart';
import 'package:ridy/register/pages/register_upload_documents_view.dart';
import 'package:ridy/register/pages/register_verification_code_view.dart';
import 'package:ridy/register/register.graphql.dart';
import 'package:ridy/schema.gql.dart';

import '../query_result_view.dart';

class RegisterView extends StatefulWidget {
  static const allowedStatuses = [
    Enum$DriverStatus.WaitingDocuments,
    Enum$DriverStatus.PendingApproval,
    Enum$DriverStatus.SoftReject
  ];
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  int activePageId = 0;
  PageController pageController = PageController(initialPage: 0);
  String? verificationId;
  String? phoneNumber;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          minimum: const EdgeInsets.all(16),
          child: Stack(
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      const RidyBackButton(text: ""),
                      Center(child: Text(S.of(context).driver_register_title))
                    ],
                  ),
                  const SizedBox(height: 12),
                  WizardSteps(
                    items: [
                      WizardStepItem(
                          title: S.of(context).register_step_phone_number),
                      WizardStepItem(
                          title: S.of(context).register_step_verify_number),
                      WizardStepItem(
                          title: S.of(context).register_step_contact_details),
                      WizardStepItem(
                          title: S.of(context).register_step_ride_details),
                      WizardStepItem(
                          title: S.of(context).register_step_payout_details),
                      WizardStepItem(
                          title: S.of(context).register_step_upload_documents)
                    ],
                    activePageId: activePageId,
                  ),
                  const SizedBox(height: 8),
                  Query$GetDriver$Widget(
                      options: Options$Query$GetDriver(
                          fetchPolicy: FetchPolicy.noCache,
                          onComplete: (result, parsedData) {
                            if (parsedData?.driver?.mobileNumber != null) {
                              if (!RegisterView.allowedStatuses
                                  .contains(parsedData?.driver?.status)) {
                                Navigator.pop(context);
                                return;
                              }
                            }

                            if (parsedData?.driver != null &&
                                activePageId < 2) {
                              WidgetsBinding.instance.addPostFrameCallback(
                                  (timeStamp) => pageController.jumpToPage(2));
                              setState(() {
                                activePageId = 2;
                              });
                            }
                            if (pageController.initialPage != activePageId) {
                              WidgetsBinding.instance.addPostFrameCallback(
                                  (timeStamp) =>
                                      pageController.jumpToPage(activePageId));
                            }
                          }),
                      builder: (result, {refetch, fetchMore}) {
                        if (result.isLoading) {
                          return Expanded(
                              child: QueryResultView(result, refetch: refetch));
                        }
                        final driver = result.parsedData?.driver;
                        return Expanded(
                          child: PageView.builder(
                              controller: pageController,
                              itemCount: 6,
                              physics: const NeverScrollableScrollPhysics(),
                              onPageChanged: (value) =>
                                  setState(() => activePageId = value),
                              itemBuilder: ((context, index) {
                                switch (index) {
                                  case 0:
                                    return RegisterPhoneNumberView(
                                      onCodeSent:
                                          (verificationId, phoneNumber) {
                                        this.verificationId = verificationId;
                                        this.phoneNumber = phoneNumber;
                                        pageController.jumpToPage(1);
                                      },
                                      onLoggedIn: () {
                                        pageController.jumpToPage(2);
                                        refetch!();
                                      },
                                      onLoadingStateUpdated: (loading) =>
                                          setState(() => isLoading = loading),
                                    );

                                  case 1:
                                    return RegisterVerificationCodeView(
                                      verificationCodeId: verificationId!,
                                      phoneNumber: phoneNumber!,
                                      onLoggedIn: () {
                                        pageController.jumpToPage(2);
                                        refetch!();
                                      },
                                      onLoadingStateUpdated: (loading) =>
                                          setState(() => isLoading = loading),
                                    );

                                  case 2:
                                    return RegisterContactDetailsView(
                                      firstName: driver?.firstName,
                                      lastName: driver?.lastName,
                                      email: driver?.email,
                                      gender: driver?.gender,
                                      certificateNumber:
                                          driver?.certificateNumber,
                                      address: driver?.address,
                                      onContinue: () {
                                        pageController.jumpToPage(3);
                                      },
                                      onLoadingStateUpdated: (loading) =>
                                          setState(() => isLoading = loading),
                                    );

                                  case 3:
                                    return RegisterRideDetailsView(
                                      models:
                                          result.parsedData?.carModels ?? [],
                                      colors:
                                          result.parsedData?.carColors ?? [],
                                      onContinue: () =>
                                          pageController.jumpToPage(4),
                                      onLoadingStateUpdated: (loading) =>
                                          setState(() => isLoading = loading),
                                    );

                                  case 4:
                                    return RegisterPayoutDetailsView(
                                      bankName: driver?.bankName,
                                      accountNumber: driver?.accountNumber,
                                      bankSwift: driver?.bankSwift,
                                      bankRoutingNumber:
                                          driver?.bankRoutingNumber,
                                      onContinue: () =>
                                          pageController.jumpToPage(5),
                                      onLoadingStateUpdated: (loading) =>
                                          setState(() => isLoading = loading),
                                    );

                                  case 5:
                                    return RegisterUploadDocumentsView(
                                      driverId: driver!.id,
                                      documents: driver.documents ?? [],
                                      profilePicture: driver.media,
                                      onUploaded: () => refetch!(),
                                      onLoadingStateUpdated: (loading) =>
                                          setState(() => isLoading = loading),
                                    );

                                  default:
                                    return const Text("Unsupported state");
                                }
                              })),
                        );
                      })
                ],
              ),
              if (isLoading)
                Positioned.fill(
                    child: Container(
                  color: Colors.white60,
                  child: QueryResultLoadingView(
                      loadingText: S.of(context).loading),
                ))
            ],
          )),
    );
  }
}
