// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ko locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ko';

  static String m0(destinationIndex) =>
      "Arrived to ${destinationIndex}st destination";

  static String m1(company) => "Copyright © ${company}, All rights reserved.";

  static String m2(distance) => "${distance} away";

  static String m3(distance) => "${distance} ft";

  static String m4(distance) => "${distance} km";

  static String m5(distance) => "${distance} m";

  static String m6(distance) => "${distance} mi";

  static String m7(destinationIndex) =>
      "Heading to ${destinationIndex}st destination";

  static String m8(number) => "${number}번으로 코드를 보냈습니다";

  static String m9(minutes) => "라이더는 ${minutes} 후에 당신을 기다립니다";

  static String m10(minutes) => "라이더는 ${minutes} 전에 당신을 예상했습니다";

  static String m11(appName) => "${appName} 지갑";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "account_number": MessageLookupByLibrary.simpleMessage("계좌 번호"),
        "actionArrivedToDestination": m0,
        "action_add_photo": MessageLookupByLibrary.simpleMessage("사진 추가"),
        "action_back": MessageLookupByLibrary.simpleMessage("뒤"),
        "action_cancel": MessageLookupByLibrary.simpleMessage("취소"),
        "action_cancel_ride": MessageLookupByLibrary.simpleMessage("승차 취소"),
        "action_complete_registration":
            MessageLookupByLibrary.simpleMessage("등록 완료"),
        "action_confirm_and_continue":
            MessageLookupByLibrary.simpleMessage("확인 및 계속"),
        "action_continue": MessageLookupByLibrary.simpleMessage("계속하다"),
        "action_delete_account": MessageLookupByLibrary.simpleMessage("계정 삭제"),
        "action_edit_submission": MessageLookupByLibrary.simpleMessage("제출 수정"),
        "action_login_signup":
            MessageLookupByLibrary.simpleMessage("로그인 / 회원가입"),
        "action_ok": MessageLookupByLibrary.simpleMessage("확인"),
        "action_ride_options": MessageLookupByLibrary.simpleMessage("라이드 옵션"),
        "action_ride_preferences":
            MessageLookupByLibrary.simpleMessage("라이더 기본 설정"),
        "action_upload_document":
            MessageLookupByLibrary.simpleMessage("문서 업로드"),
        "add_credit_dialog_choose_amount":
            MessageLookupByLibrary.simpleMessage("금액 선택"),
        "add_credit_dialog_select_payment_method":
            MessageLookupByLibrary.simpleMessage("지불 방법 선택:"),
        "add_credit_dialog_title":
            MessageLookupByLibrary.simpleMessage("크레딧 추가"),
        "address": MessageLookupByLibrary.simpleMessage("주소"),
        "announcements_empty_state_body":
            MessageLookupByLibrary.simpleMessage("새로운 공지사항이 나오면 알려드리겠습니다."),
        "announcements_empty_state_title":
            MessageLookupByLibrary.simpleMessage("아직 공지가 없습니다!"),
        "available_order_action_accept":
            MessageLookupByLibrary.simpleMessage("주문 수락"),
        "bankRoutingNumber": MessageLookupByLibrary.simpleMessage("은행 라우팅 번호"),
        "bank_name": MessageLookupByLibrary.simpleMessage("은행 이름"),
        "bank_swift": MessageLookupByLibrary.simpleMessage("은행 신속"),
        "button_report_issue": MessageLookupByLibrary.simpleMessage("문제 신고"),
        "car_color": MessageLookupByLibrary.simpleMessage("자동차 색상"),
        "car_model": MessageLookupByLibrary.simpleMessage("자동차 모델"),
        "car_production_year": MessageLookupByLibrary.simpleMessage("생산 연도"),
        "cell_number": MessageLookupByLibrary.simpleMessage("셀 번호"),
        "certificate_number": MessageLookupByLibrary.simpleMessage("인증서 번호"),
        "complaint_submit_success_message":
            MessageLookupByLibrary.simpleMessage(
                "불만 사항이 제출되었습니다. 문의 사항에 대한 지원 담당자의 연락을 기다리십시오."),
        "copyright_notice": m1,
        "dialog_account_deletion_body": MessageLookupByLibrary.simpleMessage(
            "계정을 삭제하시겠습니까? 30일 이내에 다시 로그인하여 계정을 복원할 수 있습니다. 이 기간이 지나면 남은 크레딧을 포함하여 데이터가 완전히 제거됩니다."),
        "dialog_account_deletion_title":
            MessageLookupByLibrary.simpleMessage("계정 삭제"),
        "distanceAway": m2,
        "distanceFeet": m3,
        "distanceKm": m4,
        "distanceMeters": m5,
        "distanceMiles": m6,
        "driver_register_contact_details_title":
            MessageLookupByLibrary.simpleMessage("연락처 세부 정보"),
        "driver_register_document_first":
            MessageLookupByLibrary.simpleMessage("1-ID"),
        "driver_register_document_second":
            MessageLookupByLibrary.simpleMessage("2-운전 면허증"),
        "driver_register_document_third":
            MessageLookupByLibrary.simpleMessage("3-Ride의 소유권 문서"),
        "driver_register_profile_submitted_message":
            MessageLookupByLibrary.simpleMessage(
                "관리자 승인을 위해 프로필이 제출되었습니다. 나중에 다시 확인하여 제출 상태를 확인할 수 있습니다."),
        "driver_register_ride_details_step_title":
            MessageLookupByLibrary.simpleMessage("라이드 세부 정보"),
        "driver_register_step_documents_heading":
            MessageLookupByLibrary.simpleMessage(
                "위 서류 확인을 위해 아래 서류 업로드가 필요합니다."),
        "driver_register_step_documents_title":
            MessageLookupByLibrary.simpleMessage("서류"),
        "driver_register_step_payout_details_title":
            MessageLookupByLibrary.simpleMessage("지불 세부 정보"),
        "driver_register_title":
            MessageLookupByLibrary.simpleMessage("드라이버 등록"),
        "driver_register_verification_code_textfield_hint":
            MessageLookupByLibrary.simpleMessage("확인 코드"),
        "driver_registration_approved_demo_mode":
            MessageLookupByLibrary.simpleMessage(
                "일반적으로 이 단계에서 관리자는 관리자 패널에서 드라이버 제출을 승인해야 합니다. 그러나 데모를 위해 프로필이 자동으로 승인되어 사용할 준비가 되었습니다."),
        "driver_registration_step_verify_number_title":
            MessageLookupByLibrary.simpleMessage("번호 확인"),
        "earnings_empty_state_body": MessageLookupByLibrary.simpleMessage(
            "위에서 설정한 기준으로는 어떠한 기록도 찾을 수 없습니다."),
        "email": MessageLookupByLibrary.simpleMessage("이메일"),
        "empty_state_title_no_record":
            MessageLookupByLibrary.simpleMessage("데이터가 없습니다!"),
        "enum_driver_deduct_transaction_type_commission":
            MessageLookupByLibrary.simpleMessage("수수료"),
        "enum_driver_deduct_transaction_type_correction":
            MessageLookupByLibrary.simpleMessage("보정"),
        "enum_driver_deduct_transaction_type_withdraw":
            MessageLookupByLibrary.simpleMessage("철회하다"),
        "enum_driver_recharge_transaction_type_order_fee":
            MessageLookupByLibrary.simpleMessage("주문 수수료"),
        "enum_driver_recharge_type_bank_transfer":
            MessageLookupByLibrary.simpleMessage("은행 송금"),
        "enum_driver_recharge_type_gift":
            MessageLookupByLibrary.simpleMessage("선물"),
        "enum_driver_recharge_type_in_app_payment":
            MessageLookupByLibrary.simpleMessage("인앱 결제"),
        "enum_unknown": MessageLookupByLibrary.simpleMessage("불명"),
        "error_cancel_not_allowed": MessageLookupByLibrary.simpleMessage(
            "Cancel is not allowed for an already started trip"),
        "error_field_cant_be_empty":
            MessageLookupByLibrary.simpleMessage("비워둘 수 없습니다."),
        "firstname": MessageLookupByLibrary.simpleMessage("이름"),
        "form_required_field_error":
            MessageLookupByLibrary.simpleMessage("필수 필드"),
        "gender": MessageLookupByLibrary.simpleMessage("성별"),
        "gender_female": MessageLookupByLibrary.simpleMessage("여성"),
        "gender_male": MessageLookupByLibrary.simpleMessage("남성"),
        "hard_reject_registration":
            MessageLookupByLibrary.simpleMessage("제출이 완전히 거부되었습니다!"),
        "incomplete_registration_description":
            MessageLookupByLibrary.simpleMessage("귀하의\n 등록 제출"),
        "invoice_dialog_body": MessageLookupByLibrary.simpleMessage(
            "당신과 작가가 모두 기꺼이 한다면 온라인 지불 대신 현금을 받을 수도 있습니다."),
        "invoice_dialog_heading":
            MessageLookupByLibrary.simpleMessage("라이더 지불을 기다리는 중"),
        "invoice_dialog_title": MessageLookupByLibrary.simpleMessage("결제 정보"),
        "invoice_item_subtotal": MessageLookupByLibrary.simpleMessage("소계"),
        "invoice_item_tip": MessageLookupByLibrary.simpleMessage("팁"),
        "issue_description_placeholder":
            MessageLookupByLibrary.simpleMessage("설명"),
        "issue_subject_placeholder": MessageLookupByLibrary.simpleMessage("주제"),
        "issue_submit_body": MessageLookupByLibrary.simpleMessage(
            "라이드와 관련된 모든 문제를 신고할 수 있습니다. 통화 내에서 문제를 도와드리겠습니다."),
        "issue_submit_title": MessageLookupByLibrary.simpleMessage("문제 신고"),
        "languageSettings":
            MessageLookupByLibrary.simpleMessage("Language Settings"),
        "lastname": MessageLookupByLibrary.simpleMessage("성"),
        "loading": MessageLookupByLibrary.simpleMessage("로딩 중"),
        "logout_dialog_body":
            MessageLookupByLibrary.simpleMessage("애플리케이션에서 로그아웃하시겠습니까?"),
        "mapSettings": MessageLookupByLibrary.simpleMessage("Map Settings"),
        "menu_about": MessageLookupByLibrary.simpleMessage("에 대한"),
        "menu_announcements": MessageLookupByLibrary.simpleMessage("공지사항"),
        "menu_earnings": MessageLookupByLibrary.simpleMessage("수입"),
        "menu_logout": MessageLookupByLibrary.simpleMessage("로그 아웃"),
        "menu_profile": MessageLookupByLibrary.simpleMessage("내 프로필"),
        "menu_trip_history": MessageLookupByLibrary.simpleMessage("여행 이력"),
        "menu_wallet": MessageLookupByLibrary.simpleMessage("지갑"),
        "message_cant_open_url":
            MessageLookupByLibrary.simpleMessage("명령이 지원되지 않습니다."),
        "message_notification_permission_denined_message":
            MessageLookupByLibrary.simpleMessage(
                "이전에 알림 권한이 거부되었습니다. 새로운 주문 알림을 받기 위해 앱 설정에서 권한을 활성화할 수 있습니다."),
        "message_notification_permission_title":
            MessageLookupByLibrary.simpleMessage("알림 권한"),
        "message_unknown_error":
            MessageLookupByLibrary.simpleMessage("알수없는 오류"),
        "navigation_dialog_title":
            MessageLookupByLibrary.simpleMessage("탐색할 앱 선택"),
        "navigation_dialog_title_pickup_point":
            MessageLookupByLibrary.simpleMessage("픽업 지점으로 이동"),
        "navigation_title_destination_point":
            MessageLookupByLibrary.simpleMessage("하차 지점으로 이동"),
        "onboarding_welcome": MessageLookupByLibrary.simpleMessage("어서 오십시오 !"),
        "orderStatusCardTitleMultipleDestinations": m7,
        "order_details_payment_method_title":
            MessageLookupByLibrary.simpleMessage("지불 방법"),
        "order_details_trip_information_title":
            MessageLookupByLibrary.simpleMessage("여행 정보"),
        "order_payment_method_cash": MessageLookupByLibrary.simpleMessage("현금"),
        "order_payment_method_online":
            MessageLookupByLibrary.simpleMessage("온라인"),
        "order_payment_status_paid":
            MessageLookupByLibrary.simpleMessage("라이더 지불되었습니다"),
        "order_payment_status_unpaid":
            MessageLookupByLibrary.simpleMessage("라이드는 아직 지불되지 않았습니다"),
        "order_status_action_arrived":
            MessageLookupByLibrary.simpleMessage("도착했다"),
        "order_status_action_finished":
            MessageLookupByLibrary.simpleMessage("마치다"),
        "order_status_action_navigate":
            MessageLookupByLibrary.simpleMessage("탐색"),
        "order_status_action_received_cash":
            MessageLookupByLibrary.simpleMessage("현금 지불 받았습니다"),
        "order_status_action_start":
            MessageLookupByLibrary.simpleMessage("여행 시작"),
        "order_status_canceled": MessageLookupByLibrary.simpleMessage("취소 된"),
        "order_status_card_title_arrived":
            MessageLookupByLibrary.simpleMessage("라이더가 알림을 받았습니다."),
        "order_status_card_title_driver_accepted":
            MessageLookupByLibrary.simpleMessage("도착을 탭하면 라이더에게 알림이 전송됩니다."),
        "order_status_card_title_started":
            MessageLookupByLibrary.simpleMessage("목적지로 향하는 중"),
        "pending_review_registration_description":
            MessageLookupByLibrary.simpleMessage(
                "귀하의 제출물이 검토 중입니다.\n 기다려 주셔서 감사합니다."),
        "phone_number_empty":
            MessageLookupByLibrary.simpleMessage("전화번호를 입력해주세요"),
        "plate_number": MessageLookupByLibrary.simpleMessage("플레이트 번호"),
        "profile_bank_information_title":
            MessageLookupByLibrary.simpleMessage("은행 정보"),
        "profile_distance_traveled":
            MessageLookupByLibrary.simpleMessage("이동 거리"),
        "profile_rating": MessageLookupByLibrary.simpleMessage("평가"),
        "profile_services_title": MessageLookupByLibrary.simpleMessage("서비스:"),
        "profile_total_trips": MessageLookupByLibrary.simpleMessage("총 여행"),
        "profile_uploaded_documents_title":
            MessageLookupByLibrary.simpleMessage("업로드된 문서"),
        "profile_vehicle_information_title":
            MessageLookupByLibrary.simpleMessage("차량 정보"),
        "register_contact_details_title":
            MessageLookupByLibrary.simpleMessage("연락처 정보를 입력하세요"),
        "register_number_subtitle": MessageLookupByLibrary.simpleMessage(
            "등록을 계속할 수 있도록 귀하의 번호로 코드를 보내드립니다."),
        "register_number_title":
            MessageLookupByLibrary.simpleMessage("전화번호를 입력하세요"),
        "register_payout_details_title":
            MessageLookupByLibrary.simpleMessage("지불 세부정보를 입력하세요."),
        "register_profile_photo_subtitle": MessageLookupByLibrary.simpleMessage(
            "업로드한 이미지에서 얼굴을 알아볼 수 있어야 합니다."),
        "register_profile_photo_title":
            MessageLookupByLibrary.simpleMessage("프로필 사진 업로드"),
        "register_ride_details_title":
            MessageLookupByLibrary.simpleMessage("라이드 세부정보를 입력하세요."),
        "register_step_contact_details":
            MessageLookupByLibrary.simpleMessage("연락처"),
        "register_step_payout_details":
            MessageLookupByLibrary.simpleMessage("지불 세부 정보"),
        "register_step_phone_number":
            MessageLookupByLibrary.simpleMessage("셀 번호"),
        "register_step_ride_details":
            MessageLookupByLibrary.simpleMessage("라이드 세부 정보"),
        "register_step_upload_documents":
            MessageLookupByLibrary.simpleMessage("문서 업로드"),
        "register_step_verify_number":
            MessageLookupByLibrary.simpleMessage("번호 확인"),
        "register_upload_documents_subtitle": MessageLookupByLibrary.simpleMessage(
            "신원을 확인하고 규정을 준수하려면 아래 문서를 업로드해야 합니다. \\n1-사진이 부착된 신분증\\n2-운전 면허증\\n3-라이드 소유권 문서"),
        "register_upload_documents_title":
            MessageLookupByLibrary.simpleMessage("필요한 서류 업로드"),
        "register_verify_code_subtitle": m8,
        "register_verify_code_title":
            MessageLookupByLibrary.simpleMessage("코드를 입력"),
        "ride_preferences_title":
            MessageLookupByLibrary.simpleMessage("라이드 기본 설정"),
        "rider_expected_time_future": m9,
        "rider_expected_time_past": m10,
        "rider_options_dialog_title":
            MessageLookupByLibrary.simpleMessage("라이드 옵션"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "soft_rejection_description":
            MessageLookupByLibrary.simpleMessage("제출에 문제가 있습니다"),
        "statusOffline": MessageLookupByLibrary.simpleMessage("온라인으로"),
        "statusOnline": MessageLookupByLibrary.simpleMessage("접속을 끊다"),
        "status_offline_description":
            MessageLookupByLibrary.simpleMessage("요청을 보려면 온라인에 접속하세요."),
        "status_online_description":
            MessageLookupByLibrary.simpleMessage("라이드 검색"),
        "terms_and_condition_first_part":
            MessageLookupByLibrary.simpleMessage("나는 읽었고 동의합니다"),
        "terms_and_conditions_clickable_part":
            MessageLookupByLibrary.simpleMessage("이용약관"),
        "title_important": MessageLookupByLibrary.simpleMessage("중요한!"),
        "title_logout": MessageLookupByLibrary.simpleMessage("로그 아웃"),
        "title_success": MessageLookupByLibrary.simpleMessage("성공"),
        "top_up_sheet_pay_button": MessageLookupByLibrary.simpleMessage("지불"),
        "trip_history_empty_state":
            MessageLookupByLibrary.simpleMessage("기록된 과거 주문이 없습니다."),
        "wallet_activities_heading": MessageLookupByLibrary.simpleMessage("활동"),
        "wallet_card_title": m11,
        "wallet_empty_state_message":
            MessageLookupByLibrary.simpleMessage("기록된 기록이 없습니다.")
      };
}
