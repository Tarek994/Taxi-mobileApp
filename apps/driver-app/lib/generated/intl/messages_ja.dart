// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ja locale. All the
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
  String get localeName => 'ja';

  static String m0(destinationIndex) =>
      "Arrived to ${destinationIndex}st destination";

  static String m1(company) => "著作権 © ${company}、無断複写・転載を禁じます。";

  static String m2(distance) => "${distance} away";

  static String m3(distance) => "${distance} ft";

  static String m4(distance) => "${distance} km";

  static String m5(distance) => "${distance} m";

  static String m6(distance) => "${distance} mi";

  static String m7(destinationIndex) =>
      "Heading to ${destinationIndex}st destination";

  static String m8(number) => "${number} にコードを送信しました";

  static String m9(minutes) => "乗客は ${minutes} 以内にあなたを待っています";

  static String m10(minutes) => "乗客は ${minutes} 前にあなたを待っていました";

  static String m11(appName) => "${appName} ウォレット";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "account_number": MessageLookupByLibrary.simpleMessage("口座番号"),
        "actionArrivedToDestination": m0,
        "action_add_photo": MessageLookupByLibrary.simpleMessage("写真を追加"),
        "action_back": MessageLookupByLibrary.simpleMessage("戻る"),
        "action_cancel": MessageLookupByLibrary.simpleMessage("キャンセル"),
        "action_cancel_ride": MessageLookupByLibrary.simpleMessage("乗車をキャンセル"),
        "action_complete_registration":
            MessageLookupByLibrary.simpleMessage("登録完了"),
        "action_confirm_and_continue":
            MessageLookupByLibrary.simpleMessage("確認して続行"),
        "action_continue": MessageLookupByLibrary.simpleMessage("継続する"),
        "action_delete_account":
            MessageLookupByLibrary.simpleMessage("アカウントを削除する"),
        "action_edit_submission":
            MessageLookupByLibrary.simpleMessage("提出物を編集"),
        "action_login_signup":
            MessageLookupByLibrary.simpleMessage("ログインサインアップ"),
        "action_ok": MessageLookupByLibrary.simpleMessage("わかった"),
        "action_ride_options": MessageLookupByLibrary.simpleMessage("乗車オプション"),
        "action_ride_preferences":
            MessageLookupByLibrary.simpleMessage("乗客の好み"),
        "action_upload_document":
            MessageLookupByLibrary.simpleMessage("ドキュメントのアップロード"),
        "add_credit_dialog_choose_amount":
            MessageLookupByLibrary.simpleMessage("金額を選択"),
        "add_credit_dialog_select_payment_method":
            MessageLookupByLibrary.simpleMessage("お支払い方法の選択:"),
        "add_credit_dialog_title":
            MessageLookupByLibrary.simpleMessage("クレジットを追加"),
        "address": MessageLookupByLibrary.simpleMessage("住所"),
        "announcements_empty_state_body":
            MessageLookupByLibrary.simpleMessage("新しい発表が来たらお知らせします。"),
        "announcements_empty_state_title":
            MessageLookupByLibrary.simpleMessage("お知らせはまだありません！"),
        "available_order_action_accept":
            MessageLookupByLibrary.simpleMessage("注文を受け入れる"),
        "bankRoutingNumber": MessageLookupByLibrary.simpleMessage("銀行ルーティング番号"),
        "bank_name": MessageLookupByLibrary.simpleMessage("銀行名"),
        "bank_swift": MessageLookupByLibrary.simpleMessage("バンク・スウィフト"),
        "button_report_issue": MessageLookupByLibrary.simpleMessage("問題を報告する"),
        "car_color": MessageLookupByLibrary.simpleMessage("車の色"),
        "car_model": MessageLookupByLibrary.simpleMessage("車のモデル"),
        "car_production_year": MessageLookupByLibrary.simpleMessage("製造年"),
        "cell_number": MessageLookupByLibrary.simpleMessage("セル番号"),
        "certificate_number": MessageLookupByLibrary.simpleMessage("証明書番号"),
        "complaint_submit_success_message":
            MessageLookupByLibrary.simpleMessage(
                "苦情が提出されます。お問い合わせ内容については、弊社サポート担当者からの連絡をお待ちください。"),
        "copyright_notice": m1,
        "dialog_account_deletion_body": MessageLookupByLibrary.simpleMessage(
            "アカウントを削除してもよろしいですか？アカウントを復元するには、30 日以内に再度ログインしてください。この期間が過ぎると、残りのすべてのクレジットを含め、データが完全に削除されます。"),
        "dialog_account_deletion_title":
            MessageLookupByLibrary.simpleMessage("アカウントの削除"),
        "distanceAway": m2,
        "distanceFeet": m3,
        "distanceKm": m4,
        "distanceMeters": m5,
        "distanceMiles": m6,
        "driver_register_contact_details_title":
            MessageLookupByLibrary.simpleMessage("連絡先の詳細"),
        "driver_register_document_first":
            MessageLookupByLibrary.simpleMessage("1-ID"),
        "driver_register_document_second":
            MessageLookupByLibrary.simpleMessage("2 運転免許証"),
        "driver_register_document_third":
            MessageLookupByLibrary.simpleMessage("3-Rideの所有権文書"),
        "driver_register_profile_submitted_message":
            MessageLookupByLibrary.simpleMessage(
                "あなたのプロフィールは管理者の承認のために送信されます。後でもう一度チェックして、提出のステータスを確認できます。"),
        "driver_register_ride_details_step_title":
            MessageLookupByLibrary.simpleMessage("乗車の詳細"),
        "driver_register_step_documents_heading":
            MessageLookupByLibrary.simpleMessage(
                "上記の書類を確認するには、以下の書類をアップロードする必要があります"),
        "driver_register_step_documents_title":
            MessageLookupByLibrary.simpleMessage("ドキュメント"),
        "driver_register_step_payout_details_title":
            MessageLookupByLibrary.simpleMessage("支払いの詳細"),
        "driver_register_title":
            MessageLookupByLibrary.simpleMessage("ドライバー登録"),
        "driver_register_verification_code_textfield_hint":
            MessageLookupByLibrary.simpleMessage("検証コード"),
        "driver_registration_approved_demo_mode":
            MessageLookupByLibrary.simpleMessage(
                "通常、この段階で、管理者は管理者パネルからのドライバーの送信を承認する必要があります。ただし、デモのために、プロファイルは現在自動的に承認されており、使用する準備ができています。"),
        "driver_registration_step_verify_number_title":
            MessageLookupByLibrary.simpleMessage("番号の確認"),
        "earnings_empty_state_body":
            MessageLookupByLibrary.simpleMessage("上記の基準では、レコードが見つかりません。"),
        "email": MessageLookupByLibrary.simpleMessage("Eメール"),
        "empty_state_title_no_record":
            MessageLookupByLibrary.simpleMessage("何もデータが見つかりませんでした！"),
        "enum_driver_deduct_transaction_type_commission":
            MessageLookupByLibrary.simpleMessage("手数料"),
        "enum_driver_deduct_transaction_type_correction":
            MessageLookupByLibrary.simpleMessage("修正"),
        "enum_driver_deduct_transaction_type_withdraw":
            MessageLookupByLibrary.simpleMessage("撤退"),
        "enum_driver_recharge_transaction_type_order_fee":
            MessageLookupByLibrary.simpleMessage("注文手数料"),
        "enum_driver_recharge_type_bank_transfer":
            MessageLookupByLibrary.simpleMessage("銀行振込"),
        "enum_driver_recharge_type_gift":
            MessageLookupByLibrary.simpleMessage("贈り物"),
        "enum_driver_recharge_type_in_app_payment":
            MessageLookupByLibrary.simpleMessage("アプリ内決済"),
        "enum_unknown": MessageLookupByLibrary.simpleMessage("不明"),
        "error_cancel_not_allowed": MessageLookupByLibrary.simpleMessage(
            "Cancel is not allowed for an already started trip"),
        "error_field_cant_be_empty":
            MessageLookupByLibrary.simpleMessage("空にすることはできません"),
        "firstname": MessageLookupByLibrary.simpleMessage("ファーストネーム"),
        "form_required_field_error":
            MessageLookupByLibrary.simpleMessage("必須フィールド"),
        "gender": MessageLookupByLibrary.simpleMessage("性別"),
        "gender_female": MessageLookupByLibrary.simpleMessage("女性"),
        "gender_male": MessageLookupByLibrary.simpleMessage("男"),
        "hard_reject_registration":
            MessageLookupByLibrary.simpleMessage("あなたの提出物は完全に拒否されました!"),
        "incomplete_registration_description":
            MessageLookupByLibrary.simpleMessage("記入してください\n 登録提出"),
        "invoice_dialog_body": MessageLookupByLibrary.simpleMessage(
            "あなたと作家の両方が喜んでいる場合は、オンライン支払いの代わりに現金を受け取ることもできます."),
        "invoice_dialog_heading":
            MessageLookupByLibrary.simpleMessage("乗客の支払いを待っています"),
        "invoice_dialog_title": MessageLookupByLibrary.simpleMessage("支払い情報"),
        "invoice_item_subtotal": MessageLookupByLibrary.simpleMessage("小計"),
        "invoice_item_tip": MessageLookupByLibrary.simpleMessage("ヒント"),
        "issue_description_placeholder":
            MessageLookupByLibrary.simpleMessage("説明"),
        "issue_subject_placeholder": MessageLookupByLibrary.simpleMessage("主題"),
        "issue_submit_body": MessageLookupByLibrary.simpleMessage(
            "乗車中に発生した問題を報告できます。お電話で問題を解決いたします。"),
        "issue_submit_title": MessageLookupByLibrary.simpleMessage("問題を報告する"),
        "languageSettings":
            MessageLookupByLibrary.simpleMessage("Language Settings"),
        "lastname": MessageLookupByLibrary.simpleMessage("苗字"),
        "loading": MessageLookupByLibrary.simpleMessage("読み込み中"),
        "logout_dialog_body":
            MessageLookupByLibrary.simpleMessage("アプリケーションからログアウトしてもよろしいですか?"),
        "mapSettings": MessageLookupByLibrary.simpleMessage("Map Settings"),
        "menu_about": MessageLookupByLibrary.simpleMessage("約"),
        "menu_announcements": MessageLookupByLibrary.simpleMessage("お知らせ"),
        "menu_earnings": MessageLookupByLibrary.simpleMessage("収益"),
        "menu_logout": MessageLookupByLibrary.simpleMessage("ログアウト"),
        "menu_profile": MessageLookupByLibrary.simpleMessage("私のプロフィール"),
        "menu_trip_history": MessageLookupByLibrary.simpleMessage("旅行履歴"),
        "menu_wallet": MessageLookupByLibrary.simpleMessage("財布"),
        "message_cant_open_url":
            MessageLookupByLibrary.simpleMessage("コマンドはサポートされていません"),
        "message_notification_permission_denined_message":
            MessageLookupByLibrary.simpleMessage(
                "以前に通知許可が拒否されました。新規注文の通知を受け取るために、アプリの設定から許可を有効にすることができます。"),
        "message_notification_permission_title":
            MessageLookupByLibrary.simpleMessage("通知許可"),
        "message_unknown_error": MessageLookupByLibrary.simpleMessage("未知のエラー"),
        "navigation_dialog_title":
            MessageLookupByLibrary.simpleMessage("ナビゲートするアプリを選択してください"),
        "navigation_dialog_title_pickup_point":
            MessageLookupByLibrary.simpleMessage("ピックアップポイントに移動"),
        "navigation_title_destination_point":
            MessageLookupByLibrary.simpleMessage("降車地点に移動"),
        "onboarding_welcome":
            MessageLookupByLibrary.simpleMessage("いらっしゃいませ ！"),
        "orderStatusCardTitleMultipleDestinations": m7,
        "order_details_payment_method_title":
            MessageLookupByLibrary.simpleMessage("支払方法"),
        "order_details_trip_information_title":
            MessageLookupByLibrary.simpleMessage("旅行情報"),
        "order_payment_method_cash": MessageLookupByLibrary.simpleMessage("現金"),
        "order_payment_method_online":
            MessageLookupByLibrary.simpleMessage("オンライン"),
        "order_payment_status_paid":
            MessageLookupByLibrary.simpleMessage("ライダーは支払われました"),
        "order_payment_status_unpaid":
            MessageLookupByLibrary.simpleMessage("乗車料金はまだ支払われていません"),
        "order_status_action_arrived":
            MessageLookupByLibrary.simpleMessage("到着した"),
        "order_status_action_finished":
            MessageLookupByLibrary.simpleMessage("終了"),
        "order_status_action_navigate":
            MessageLookupByLibrary.simpleMessage("ナビゲート"),
        "order_status_action_received_cash":
            MessageLookupByLibrary.simpleMessage("現金支払いの受領"),
        "order_status_action_start":
            MessageLookupByLibrary.simpleMessage("旅行を開始"),
        "order_status_canceled": MessageLookupByLibrary.simpleMessage("キャンセル"),
        "order_status_card_title_arrived":
            MessageLookupByLibrary.simpleMessage("ライダーに通知されました"),
        "order_status_card_title_driver_accepted":
            MessageLookupByLibrary.simpleMessage("[到着] をタップすると乗客に通知されます"),
        "order_status_card_title_started":
            MessageLookupByLibrary.simpleMessage("目的地に向かっています"),
        "pending_review_registration_description":
            MessageLookupByLibrary.simpleMessage(
                "あなたの提出物は審査中です。\n お待ちいただきありがとうございます。"),
        "phone_number_empty":
            MessageLookupByLibrary.simpleMessage("電話番号を入力してください"),
        "plate_number": MessageLookupByLibrary.simpleMessage("プレートナンバー"),
        "profile_bank_information_title":
            MessageLookupByLibrary.simpleMessage("銀行情報"),
        "profile_distance_traveled":
            MessageLookupByLibrary.simpleMessage("走行距離"),
        "profile_rating": MessageLookupByLibrary.simpleMessage("評価"),
        "profile_services_title": MessageLookupByLibrary.simpleMessage("サービス:"),
        "profile_total_trips": MessageLookupByLibrary.simpleMessage("合計旅行"),
        "profile_uploaded_documents_title":
            MessageLookupByLibrary.simpleMessage("アップロードされたドキュメント"),
        "profile_vehicle_information_title":
            MessageLookupByLibrary.simpleMessage("車両情報"),
        "register_contact_details_title":
            MessageLookupByLibrary.simpleMessage("連絡先の詳細を入力してください"),
        "register_number_subtitle":
            MessageLookupByLibrary.simpleMessage("登録を続行するためのコードをあなたの番号に送信します"),
        "register_number_title":
            MessageLookupByLibrary.simpleMessage("電話番号を入力してください"),
        "register_payout_details_title":
            MessageLookupByLibrary.simpleMessage("支払いの詳細を入力してください"),
        "register_profile_photo_subtitle": MessageLookupByLibrary.simpleMessage(
            "アップロードされた画像であなたの顔を認識できる必要があります"),
        "register_profile_photo_title":
            MessageLookupByLibrary.simpleMessage("プロフィール写真をアップロード"),
        "register_ride_details_title":
            MessageLookupByLibrary.simpleMessage("乗車の詳細を入力してください"),
        "register_step_contact_details":
            MessageLookupByLibrary.simpleMessage("連絡先の詳細"),
        "register_step_payout_details":
            MessageLookupByLibrary.simpleMessage("支払いの詳細"),
        "register_step_phone_number":
            MessageLookupByLibrary.simpleMessage("セル番号"),
        "register_step_ride_details":
            MessageLookupByLibrary.simpleMessage("乗車の詳細"),
        "register_step_upload_documents":
            MessageLookupByLibrary.simpleMessage("ドキュメントのアップロード"),
        "register_step_verify_number":
            MessageLookupByLibrary.simpleMessage("番号の確認"),
        "register_upload_documents_subtitle": MessageLookupByLibrary.simpleMessage(
            "身元を確認し、規制に準拠するために、以下の書類をアップロードする必要があります: \\n1-写真付き身分証明書\\n2-運転免許証\\n3-乗り物の所有権に関する書類"),
        "register_upload_documents_title":
            MessageLookupByLibrary.simpleMessage("必要書類のアップロード"),
        "register_verify_code_subtitle": m8,
        "register_verify_code_title":
            MessageLookupByLibrary.simpleMessage("コードを入力する"),
        "ride_preferences_title": MessageLookupByLibrary.simpleMessage("乗車設定"),
        "rider_expected_time_future": m9,
        "rider_expected_time_past": m10,
        "rider_options_dialog_title":
            MessageLookupByLibrary.simpleMessage("乗車オプション"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "soft_rejection_description":
            MessageLookupByLibrary.simpleMessage("提出物に問題がある"),
        "statusOffline": MessageLookupByLibrary.simpleMessage("オンライン化する"),
        "statusOnline": MessageLookupByLibrary.simpleMessage("オフラインにする"),
        "status_offline_description":
            MessageLookupByLibrary.simpleMessage("オンラインでリクエストを確認する"),
        "status_online_description":
            MessageLookupByLibrary.simpleMessage("乗り物を探しています"),
        "terms_and_condition_first_part":
            MessageLookupByLibrary.simpleMessage("私は読み、同意します"),
        "terms_and_conditions_clickable_part":
            MessageLookupByLibrary.simpleMessage("利用規約"),
        "title_important": MessageLookupByLibrary.simpleMessage("重要！"),
        "title_logout": MessageLookupByLibrary.simpleMessage("ログアウト"),
        "title_success": MessageLookupByLibrary.simpleMessage("成功"),
        "top_up_sheet_pay_button": MessageLookupByLibrary.simpleMessage("支払い"),
        "trip_history_empty_state":
            MessageLookupByLibrary.simpleMessage("過去の注文は記録されていません。"),
        "wallet_activities_heading":
            MessageLookupByLibrary.simpleMessage("活動内容"),
        "wallet_card_title": m11,
        "wallet_empty_state_message":
            MessageLookupByLibrary.simpleMessage("履歴が記録されていません。")
      };
}
