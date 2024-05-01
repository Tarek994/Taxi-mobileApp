// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a hi locale. All the
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
  String get localeName => 'hi';

  static String m0(destinationIndex) =>
      "Arrived to ${destinationIndex}st destination";

  static String m1(company) => "कॉपीराइट © ${company}, सर्वाधिकार सुरक्षित।";

  static String m2(distance) => "${distance} away";

  static String m3(distance) => "${distance} ft";

  static String m4(distance) => "${distance} km";

  static String m5(distance) => "${distance} m";

  static String m6(distance) => "${distance} mi";

  static String m7(destinationIndex) =>
      "Heading to ${destinationIndex}st destination";

  static String m8(number) => "हमने ${number} पर एक कोड भेजा है";

  static String m9(minutes) => "राइडर आपसे ${minutes} में उम्मीद करता है";

  static String m10(minutes) => "राइडर ने आपसे ${minutes} पहले उम्मीद की थी";

  static String m11(appName) => "${appName} वॉलेट";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "account_number": MessageLookupByLibrary.simpleMessage("खाता संख्या"),
        "actionArrivedToDestination": m0,
        "action_add_photo":
            MessageLookupByLibrary.simpleMessage("तस्वीर जोड़ो"),
        "action_back": MessageLookupByLibrary.simpleMessage("पीछे"),
        "action_cancel": MessageLookupByLibrary.simpleMessage("रद्द करना"),
        "action_cancel_ride":
            MessageLookupByLibrary.simpleMessage("सवारी रद्द करें"),
        "action_complete_registration":
            MessageLookupByLibrary.simpleMessage("पूरा पंजीकरण"),
        "action_confirm_and_continue":
            MessageLookupByLibrary.simpleMessage("पुष्टि करें और जारी रखें"),
        "action_continue": MessageLookupByLibrary.simpleMessage("जारी रखना"),
        "action_delete_account":
            MessageLookupByLibrary.simpleMessage("खाता हटा दो"),
        "action_edit_submission":
            MessageLookupByLibrary.simpleMessage("सबमिशन संपादित करें"),
        "action_login_signup": MessageLookupByLibrary.simpleMessage(
            "साइन अप करने के लिए लॉग इन करें"),
        "action_ok": MessageLookupByLibrary.simpleMessage("ठीक है"),
        "action_ride_options":
            MessageLookupByLibrary.simpleMessage("सवारी विकल्प"),
        "action_ride_preferences":
            MessageLookupByLibrary.simpleMessage("राइडर वरीयताएँ"),
        "action_upload_document":
            MessageLookupByLibrary.simpleMessage("दस्तावेज़ अपलोड करें"),
        "add_credit_dialog_choose_amount":
            MessageLookupByLibrary.simpleMessage("राशि चुनें"),
        "add_credit_dialog_select_payment_method":
            MessageLookupByLibrary.simpleMessage("भुगतान का तरीका चुनें:"),
        "add_credit_dialog_title":
            MessageLookupByLibrary.simpleMessage("क्रेडिट जोड़ने"),
        "address": MessageLookupByLibrary.simpleMessage("पता"),
        "announcements_empty_state_body": MessageLookupByLibrary.simpleMessage(
            "नई घोषणाएं आने पर हम आपको सूचित करेंगे।"),
        "announcements_empty_state_title":
            MessageLookupByLibrary.simpleMessage("अभी तक कोई घोषणा नहीं!"),
        "available_order_action_accept":
            MessageLookupByLibrary.simpleMessage("आदेश स्वीकार करें"),
        "bankRoutingNumber":
            MessageLookupByLibrary.simpleMessage("अधिकोष क्रम संख्या"),
        "bank_name": MessageLookupByLibrary.simpleMessage("बैंक का नाम"),
        "bank_swift": MessageLookupByLibrary.simpleMessage("बैंक स्विफ्ट"),
        "button_report_issue":
            MessageLookupByLibrary.simpleMessage("मामले की रिपोर्ट करें"),
        "car_color": MessageLookupByLibrary.simpleMessage("कार का रंग"),
        "car_model": MessageLookupByLibrary.simpleMessage("कार के मॉडल"),
        "car_production_year":
            MessageLookupByLibrary.simpleMessage("उत्पादन वर्ष"),
        "cell_number": MessageLookupByLibrary.simpleMessage("मोबाइल नम्बर"),
        "certificate_number":
            MessageLookupByLibrary.simpleMessage("सर्टिफिकेट नंबर"),
        "complaint_submit_success_message": MessageLookupByLibrary.simpleMessage(
            "शिकायत प्रस्तुत की जाती है। कृपया अपनी पूछताछ के बारे में हमारे समर्थन प्रतिनिधि के संपर्क की प्रतीक्षा करें।"),
        "copyright_notice": m1,
        "dialog_account_deletion_body": MessageLookupByLibrary.simpleMessage(
            "क्या आप इस खाते को हटाने के लिए सुनिश्चित हैं? आप खाते को पुनर्स्थापित करने के लिए 30 दिनों के भीतर फिर से लॉग इन कर सकते हैं। इस अवधि के बाद, आपका डेटा पूरी तरह से हटा दिया जाता है, जिसमें आपके सभी शेष क्रेडिट शामिल हैं।"),
        "dialog_account_deletion_title":
            MessageLookupByLibrary.simpleMessage("खाता हटाना"),
        "distanceAway": m2,
        "distanceFeet": m3,
        "distanceKm": m4,
        "distanceMeters": m5,
        "distanceMiles": m6,
        "driver_register_contact_details_title":
            MessageLookupByLibrary.simpleMessage("सम्पर्क करने का विवरण"),
        "driver_register_document_first":
            MessageLookupByLibrary.simpleMessage("1-आईडी"),
        "driver_register_document_second":
            MessageLookupByLibrary.simpleMessage("2-चालक लाइसेंस"),
        "driver_register_document_third": MessageLookupByLibrary.simpleMessage(
            "3-सवारी का स्वामित्व दस्तावेज़"),
        "driver_register_profile_submitted_message":
            MessageLookupByLibrary.simpleMessage(
                "आपका प्रोफ़ाइल व्यवस्थापक अनुमोदन के लिए सबमिट किया गया है। अपने सबमिशन की स्थिति देखने के लिए आप बाद में वापस देख सकते हैं।"),
        "driver_register_ride_details_step_title":
            MessageLookupByLibrary.simpleMessage("सवारी विवरण"),
        "driver_register_step_documents_heading":
            MessageLookupByLibrary.simpleMessage(
                "उपरोक्त दस्तावेजों को सत्यापित करने के लिए, हमें नीचे दिए गए दस्तावेजों को अपलोड करने की आवश्यकता है"),
        "driver_register_step_documents_title":
            MessageLookupByLibrary.simpleMessage("दस्तावेज़"),
        "driver_register_step_payout_details_title":
            MessageLookupByLibrary.simpleMessage("भुगतान विवरण"),
        "driver_register_title":
            MessageLookupByLibrary.simpleMessage("चालक पंजीकरण"),
        "driver_register_verification_code_textfield_hint":
            MessageLookupByLibrary.simpleMessage("पुष्टि संख्या"),
        "driver_registration_approved_demo_mode":
            MessageLookupByLibrary.simpleMessage(
                "आम तौर पर, इस स्तर पर व्यवस्थापक को व्यवस्थापक पैनल से ड्राइवर के सबमिशन को अनुमोदित करने की आवश्यकता होगी। हालांकि, डेमो के लिए, आपकी प्रोफ़ाइल अब स्वचालित रूप से स्वीकृत हो गई है और उपयोग के लिए तैयार है।"),
        "driver_registration_step_verify_number_title":
            MessageLookupByLibrary.simpleMessage("नंबर सत्यापित करें"),
        "earnings_empty_state_body": MessageLookupByLibrary.simpleMessage(
            "ऊपर निर्धारित मानदंडों पर, हमें कोई रिकॉर्ड नहीं मिल रहा है।"),
        "email": MessageLookupByLibrary.simpleMessage("ईमेल"),
        "empty_state_title_no_record":
            MessageLookupByLibrary.simpleMessage("कोई डेटा नहीं मिला!"),
        "enum_driver_deduct_transaction_type_commission":
            MessageLookupByLibrary.simpleMessage("आयोग"),
        "enum_driver_deduct_transaction_type_correction":
            MessageLookupByLibrary.simpleMessage("सुधार"),
        "enum_driver_deduct_transaction_type_withdraw":
            MessageLookupByLibrary.simpleMessage("वापस लेना"),
        "enum_driver_recharge_transaction_type_order_fee":
            MessageLookupByLibrary.simpleMessage("आदेश शुल्क"),
        "enum_driver_recharge_type_bank_transfer":
            MessageLookupByLibrary.simpleMessage("बैंक ट्रांसफर"),
        "enum_driver_recharge_type_gift":
            MessageLookupByLibrary.simpleMessage("उपहार"),
        "enum_driver_recharge_type_in_app_payment":
            MessageLookupByLibrary.simpleMessage("इन-ऐप भुगतान"),
        "enum_unknown": MessageLookupByLibrary.simpleMessage("अनजान"),
        "error_cancel_not_allowed": MessageLookupByLibrary.simpleMessage(
            "Cancel is not allowed for an already started trip"),
        "error_field_cant_be_empty":
            MessageLookupByLibrary.simpleMessage("खाली नहीं किया जा सकता"),
        "firstname": MessageLookupByLibrary.simpleMessage("पहला नाम"),
        "form_required_field_error":
            MessageLookupByLibrary.simpleMessage("आवश्यक क्षेत्र"),
        "gender": MessageLookupByLibrary.simpleMessage("लिंग"),
        "gender_female": MessageLookupByLibrary.simpleMessage("मादा"),
        "gender_male": MessageLookupByLibrary.simpleMessage("पुरुष"),
        "hard_reject_registration": MessageLookupByLibrary.simpleMessage(
            "आपका सबमिशन पूरी तरह से खारिज कर दिया गया है!"),
        "incomplete_registration_description":
            MessageLookupByLibrary.simpleMessage(
                "कृपया अपना पूरा करें\n पंजीकरण प्रस्तुत करना"),
        "invoice_dialog_body": MessageLookupByLibrary.simpleMessage(
            "आप ऑनलाइन भुगतान के बदले नकद भी प्राप्त कर सकते हैं यदि आप और लेखक दोनों इसके लिए तैयार हैं।"),
        "invoice_dialog_heading": MessageLookupByLibrary.simpleMessage(
            "सवार भुगतान की प्रतीक्षा कर रहा है"),
        "invoice_dialog_title":
            MessageLookupByLibrary.simpleMessage("भुगतान की जानकारी"),
        "invoice_item_subtotal": MessageLookupByLibrary.simpleMessage("उप-योग"),
        "invoice_item_tip": MessageLookupByLibrary.simpleMessage("बख्शीश"),
        "issue_description_placeholder":
            MessageLookupByLibrary.simpleMessage("विवरण"),
        "issue_subject_placeholder":
            MessageLookupByLibrary.simpleMessage("विषय"),
        "issue_submit_body": MessageLookupByLibrary.simpleMessage(
            "आप अपनी सवारी के साथ किसी भी समस्या की रिपोर्ट कर सकते हैं। हम एक कॉल के भीतर इस मुद्दे के साथ आपकी मदद करेंगे।"),
        "issue_submit_title":
            MessageLookupByLibrary.simpleMessage("मामले की रिपोर्ट करें"),
        "languageSettings":
            MessageLookupByLibrary.simpleMessage("Language Settings"),
        "lastname": MessageLookupByLibrary.simpleMessage("उपनाम"),
        "loading": MessageLookupByLibrary.simpleMessage("लोड हो रहा है"),
        "logout_dialog_body": MessageLookupByLibrary.simpleMessage(
            "क्या आप वाकई एप्लिकेशन से लॉग आउट करना चाहते हैं?"),
        "mapSettings": MessageLookupByLibrary.simpleMessage("Map Settings"),
        "menu_about": MessageLookupByLibrary.simpleMessage("के बारे में"),
        "menu_announcements": MessageLookupByLibrary.simpleMessage("घोषणाओं"),
        "menu_earnings": MessageLookupByLibrary.simpleMessage("आय"),
        "menu_logout": MessageLookupByLibrary.simpleMessage("लॉग आउट"),
        "menu_profile": MessageLookupByLibrary.simpleMessage("मेरी प्रोफाइल"),
        "menu_trip_history":
            MessageLookupByLibrary.simpleMessage("यात्रा इतिहास"),
        "menu_wallet": MessageLookupByLibrary.simpleMessage("बटुआ"),
        "message_cant_open_url":
            MessageLookupByLibrary.simpleMessage("कमांड समर्थित नहीं है"),
        "message_notification_permission_denined_message":
            MessageLookupByLibrary.simpleMessage(
                "अधिसूचना की अनुमति पहले अस्वीकार कर दी गई थी। नई ऑर्डर सूचनाएं प्राप्त करने के लिए, आप ऐप सेटिंग से अनुमति को सक्षम कर सकते हैं।"),
        "message_notification_permission_title":
            MessageLookupByLibrary.simpleMessage("अधिसूचना अनुमति"),
        "message_unknown_error":
            MessageLookupByLibrary.simpleMessage("अज्ञात त्रुटि"),
        "navigation_dialog_title": MessageLookupByLibrary.simpleMessage(
            "नेविगेट करने के लिए एक ऐप चुनें"),
        "navigation_dialog_title_pickup_point":
            MessageLookupByLibrary.simpleMessage("पिकअप पॉइंट पर नेविगेट करें"),
        "navigation_title_destination_point":
            MessageLookupByLibrary.simpleMessage(
                "ड्रॉप ऑफ पॉइंट पर नेविगेट करें"),
        "onboarding_welcome": MessageLookupByLibrary.simpleMessage("स्वागत !"),
        "orderStatusCardTitleMultipleDestinations": m7,
        "order_details_payment_method_title":
            MessageLookupByLibrary.simpleMessage("भुगतान का तरीका"),
        "order_details_trip_information_title":
            MessageLookupByLibrary.simpleMessage("यात्रा की जानकारी"),
        "order_payment_method_cash":
            MessageLookupByLibrary.simpleMessage("नकद"),
        "order_payment_method_online":
            MessageLookupByLibrary.simpleMessage("ऑनलाइन"),
        "order_payment_status_paid":
            MessageLookupByLibrary.simpleMessage("राइडर का भुगतान किया गया है"),
        "order_payment_status_unpaid": MessageLookupByLibrary.simpleMessage(
            "सवारी का भुगतान अभी तक नहीं किया गया है"),
        "order_status_action_arrived":
            MessageLookupByLibrary.simpleMessage("पहुंच गए"),
        "order_status_action_finished":
            MessageLookupByLibrary.simpleMessage("खत्म करना"),
        "order_status_action_navigate":
            MessageLookupByLibrary.simpleMessage("नेविगेट"),
        "order_status_action_received_cash":
            MessageLookupByLibrary.simpleMessage("नकद भुगतान प्राप्त"),
        "order_status_action_start":
            MessageLookupByLibrary.simpleMessage("यात्रा शुरू करें"),
        "order_status_canceled": MessageLookupByLibrary.simpleMessage("रद्द"),
        "order_status_card_title_arrived": MessageLookupByLibrary.simpleMessage(
            "राइडर को सूचित कर दिया गया है"),
        "order_status_card_title_driver_accepted":
            MessageLookupByLibrary.simpleMessage(
                "आपके आगमन पर टैप करते ही राइडर को सूचित कर दिया जाएगा"),
        "order_status_card_title_started":
            MessageLookupByLibrary.simpleMessage("गंतव्य की ओर जा रहे हैं"),
        "pending_review_registration_description":
            MessageLookupByLibrary.simpleMessage(
                "आपके सबमिशन की समीक्षा की जा रही है,\n धैर्य के लिए धन्यवाद।"),
        "phone_number_empty":
            MessageLookupByLibrary.simpleMessage("कृपया फ़ोन नंबर दर्ज करें"),
        "plate_number": MessageLookupByLibrary.simpleMessage("थाली संख्या"),
        "profile_bank_information_title":
            MessageLookupByLibrary.simpleMessage("बैंक जानकारी"),
        "profile_distance_traveled":
            MessageLookupByLibrary.simpleMessage("तय की गई दूरी"),
        "profile_rating": MessageLookupByLibrary.simpleMessage("रेटिंग"),
        "profile_services_title":
            MessageLookupByLibrary.simpleMessage("सेवाएं:"),
        "profile_total_trips":
            MessageLookupByLibrary.simpleMessage("कुल यात्राएं"),
        "profile_uploaded_documents_title":
            MessageLookupByLibrary.simpleMessage("अपलोड किए गए दस्तावेज़"),
        "profile_vehicle_information_title":
            MessageLookupByLibrary.simpleMessage("वाहन की जानकारी"),
        "register_contact_details_title":
            MessageLookupByLibrary.simpleMessage("अपना संपर्क विवरण दर्ज करें"),
        "register_number_subtitle": MessageLookupByLibrary.simpleMessage(
            "पंजीकरण जारी रखने के लिए हम आपके नंबर पर एक कोड भेजेंगे"),
        "register_number_title": MessageLookupByLibrary.simpleMessage(
            "अपना दूरभाष क्रमांक दर्ज करें"),
        "register_payout_details_title":
            MessageLookupByLibrary.simpleMessage("अपना पेआउट विवरण दर्ज करें"),
        "register_profile_photo_subtitle": MessageLookupByLibrary.simpleMessage(
            "अपलोड की गई छवि में आपका चेहरा पहचानने योग्य होना चाहिए"),
        "register_profile_photo_title":
            MessageLookupByLibrary.simpleMessage("प्रोफाइल फोटो अपलोड करें"),
        "register_ride_details_title": MessageLookupByLibrary.simpleMessage(
            "अपनी सवारी का विवरण दर्ज करें"),
        "register_step_contact_details":
            MessageLookupByLibrary.simpleMessage("संपर्क विवरण"),
        "register_step_payout_details":
            MessageLookupByLibrary.simpleMessage("भुगतान विवरण"),
        "register_step_phone_number":
            MessageLookupByLibrary.simpleMessage("मोबाइल नम्बर"),
        "register_step_ride_details":
            MessageLookupByLibrary.simpleMessage("सवारी विवरण"),
        "register_step_upload_documents":
            MessageLookupByLibrary.simpleMessage("दस्तावेज़ अपलोड करें"),
        "register_step_verify_number":
            MessageLookupByLibrary.simpleMessage("नंबर सत्यापित करें"),
        "register_upload_documents_subtitle": MessageLookupByLibrary.simpleMessage(
            "आपकी पहचान सत्यापित करने और नियमों का पालन करने के लिए हमें आपको नीचे दिए गए दस्तावेज़ अपलोड करने होंगे: \\n1-फ़ोटो आईडी\\n2-चालक लाइसेंस\\n3-सवारी स्वामित्व दस्तावेज़"),
        "register_upload_documents_title":
            MessageLookupByLibrary.simpleMessage("आवश्यक दस्तावेज अपलोड करें"),
        "register_verify_code_subtitle": m8,
        "register_verify_code_title":
            MessageLookupByLibrary.simpleMessage("कोड दर्ज करें"),
        "ride_preferences_title":
            MessageLookupByLibrary.simpleMessage("सवारी वरीयताएँ"),
        "rider_expected_time_future": m9,
        "rider_expected_time_past": m10,
        "rider_options_dialog_title":
            MessageLookupByLibrary.simpleMessage("सवारी विकल्प"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "soft_rejection_description":
            MessageLookupByLibrary.simpleMessage("सबमिशन में समस्या है"),
        "statusOffline": MessageLookupByLibrary.simpleMessage("ऑनलाइन जाओ"),
        "statusOnline": MessageLookupByLibrary.simpleMessage("ऑफ़ लाइन हो जाओ"),
        "status_offline_description": MessageLookupByLibrary.simpleMessage(
            "अनुरोध देखने के लिए ऑनलाइन हो जाएं"),
        "status_online_description":
            MessageLookupByLibrary.simpleMessage("सवारी के लिए खोज रहे हैं"),
        "terms_and_condition_first_part": MessageLookupByLibrary.simpleMessage(
            "मैंने पढ़ा है और इससे सहमत हूं"),
        "terms_and_conditions_clickable_part":
            MessageLookupByLibrary.simpleMessage("नियम एवं शर्तें"),
        "title_important": MessageLookupByLibrary.simpleMessage("महत्वपूर्ण!"),
        "title_logout": MessageLookupByLibrary.simpleMessage("लॉग आउट"),
        "title_success": MessageLookupByLibrary.simpleMessage("सफलता"),
        "top_up_sheet_pay_button":
            MessageLookupByLibrary.simpleMessage("भुगतान करना"),
        "trip_history_empty_state": MessageLookupByLibrary.simpleMessage(
            "पिछले कोई आदेश दर्ज नहीं किया गया है।"),
        "wallet_activities_heading":
            MessageLookupByLibrary.simpleMessage("गतिविधियां"),
        "wallet_card_title": m11,
        "wallet_empty_state_message":
            MessageLookupByLibrary.simpleMessage("कोई इतिहास दर्ज नहीं है।")
      };
}
