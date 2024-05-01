// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a zh locale. All the
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
  String get localeName => 'zh';

  static String m0(destinationIndex) =>
      "Arrived to ${destinationIndex}st destination";

  static String m1(company) => "版权所有 © ${company}，保留所有权利。";

  static String m2(distance) => "${distance} away";

  static String m3(distance) => "${distance} ft";

  static String m4(distance) => "${distance} km";

  static String m5(distance) => "${distance} m";

  static String m6(distance) => "${distance} mi";

  static String m7(destinationIndex) =>
      "Heading to ${destinationIndex}st destination";

  static String m8(number) => "我们已向 ${number} 发送了一个代码";

  static String m9(minutes) => "骑士在 ${minutes} 等你";

  static String m10(minutes) => "骑士 ${minutes} 前期待您";

  static String m11(appName) => "${appName} 钱包";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "account_number": MessageLookupByLibrary.simpleMessage("帐号"),
        "actionArrivedToDestination": m0,
        "action_add_photo": MessageLookupByLibrary.simpleMessage("添加照片"),
        "action_back": MessageLookupByLibrary.simpleMessage("后退"),
        "action_cancel": MessageLookupByLibrary.simpleMessage("取消"),
        "action_cancel_ride": MessageLookupByLibrary.simpleMessage("取消行程"),
        "action_complete_registration":
            MessageLookupByLibrary.simpleMessage("完成注册"),
        "action_confirm_and_continue":
            MessageLookupByLibrary.simpleMessage("确认并继续"),
        "action_continue": MessageLookupByLibrary.simpleMessage("继续"),
        "action_delete_account": MessageLookupByLibrary.simpleMessage("删除帐户"),
        "action_edit_submission": MessageLookupByLibrary.simpleMessage("编辑提交"),
        "action_login_signup": MessageLookupByLibrary.simpleMessage("登陆注册"),
        "action_ok": MessageLookupByLibrary.simpleMessage("好的"),
        "action_ride_options": MessageLookupByLibrary.simpleMessage("骑行选项"),
        "action_ride_preferences": MessageLookupByLibrary.simpleMessage("骑手偏好"),
        "action_upload_document": MessageLookupByLibrary.simpleMessage("上传文件"),
        "add_credit_dialog_choose_amount":
            MessageLookupByLibrary.simpleMessage("选择金额"),
        "add_credit_dialog_select_payment_method":
            MessageLookupByLibrary.simpleMessage("选择付款方式："),
        "add_credit_dialog_title": MessageLookupByLibrary.simpleMessage("添加信用"),
        "address": MessageLookupByLibrary.simpleMessage("地址"),
        "announcements_empty_state_body":
            MessageLookupByLibrary.simpleMessage("当有新的公告时，我们会通知您。"),
        "announcements_empty_state_title":
            MessageLookupByLibrary.simpleMessage("暂无公告！"),
        "available_order_action_accept":
            MessageLookupByLibrary.simpleMessage("接受订单"),
        "bankRoutingNumber": MessageLookupByLibrary.simpleMessage("银行路由号码"),
        "bank_name": MessageLookupByLibrary.simpleMessage("银行名称"),
        "bank_swift": MessageLookupByLibrary.simpleMessage("银行斯威夫特"),
        "button_report_issue": MessageLookupByLibrary.simpleMessage("报告问题"),
        "car_color": MessageLookupByLibrary.simpleMessage("汽车颜色"),
        "car_model": MessageLookupByLibrary.simpleMessage("汽车模型"),
        "car_production_year": MessageLookupByLibrary.simpleMessage("生产年份"),
        "cell_number": MessageLookupByLibrary.simpleMessage("细胞数量"),
        "certificate_number": MessageLookupByLibrary.simpleMessage("证书编号"),
        "complaint_submit_success_message":
            MessageLookupByLibrary.simpleMessage("投诉已提交。请等待我们的支持代表就您的询问与您联系。"),
        "copyright_notice": m1,
        "dialog_account_deletion_body": MessageLookupByLibrary.simpleMessage(
            "您确定要删除您的帐户吗？您可以在 30 天内再次登录以恢复帐户。在此期间之后，您的数据将被完全删除，包括您所有剩余的信用。"),
        "dialog_account_deletion_title":
            MessageLookupByLibrary.simpleMessage("帐户删除"),
        "distanceAway": m2,
        "distanceFeet": m3,
        "distanceKm": m4,
        "distanceMeters": m5,
        "distanceMiles": m6,
        "driver_register_contact_details_title":
            MessageLookupByLibrary.simpleMessage("联系方式"),
        "driver_register_document_first":
            MessageLookupByLibrary.simpleMessage("1-ID"),
        "driver_register_document_second":
            MessageLookupByLibrary.simpleMessage("2-驾驶执照"),
        "driver_register_document_third":
            MessageLookupByLibrary.simpleMessage("3-Ride 的所有权文件"),
        "driver_register_profile_submitted_message":
            MessageLookupByLibrary.simpleMessage(
                "您的个人资料已提交以供管理员批准。您可以稍后再回来查看您提交的状态。"),
        "driver_register_ride_details_step_title":
            MessageLookupByLibrary.simpleMessage("乘车详情"),
        "driver_register_step_documents_heading":
            MessageLookupByLibrary.simpleMessage("为了验证上述文件，我们需要上传以下文件"),
        "driver_register_step_documents_title":
            MessageLookupByLibrary.simpleMessage("文件"),
        "driver_register_step_payout_details_title":
            MessageLookupByLibrary.simpleMessage("付款详情"),
        "driver_register_title": MessageLookupByLibrary.simpleMessage("司机登记"),
        "driver_register_verification_code_textfield_hint":
            MessageLookupByLibrary.simpleMessage("验证码"),
        "driver_registration_approved_demo_mode":
            MessageLookupByLibrary.simpleMessage(
                "通常，在这个阶段管理员需要从管理面板批准驱动程序的提交。但是，为了演示，您的个人资料现在已自动获得批准并可以使用。"),
        "driver_registration_step_verify_number_title":
            MessageLookupByLibrary.simpleMessage("验证号码"),
        "earnings_empty_state_body":
            MessageLookupByLibrary.simpleMessage("在上面设置的条件下，我们找不到任何记录。"),
        "email": MessageLookupByLibrary.simpleMessage("电子邮件"),
        "empty_state_title_no_record":
            MessageLookupByLibrary.simpleMessage("没有找到数据！"),
        "enum_driver_deduct_transaction_type_commission":
            MessageLookupByLibrary.simpleMessage("委员会"),
        "enum_driver_deduct_transaction_type_correction":
            MessageLookupByLibrary.simpleMessage("更正"),
        "enum_driver_deduct_transaction_type_withdraw":
            MessageLookupByLibrary.simpleMessage("提取"),
        "enum_driver_recharge_transaction_type_order_fee":
            MessageLookupByLibrary.simpleMessage("订购费"),
        "enum_driver_recharge_type_bank_transfer":
            MessageLookupByLibrary.simpleMessage("银行转帐"),
        "enum_driver_recharge_type_gift":
            MessageLookupByLibrary.simpleMessage("礼物"),
        "enum_driver_recharge_type_in_app_payment":
            MessageLookupByLibrary.simpleMessage("应用内支付"),
        "enum_unknown": MessageLookupByLibrary.simpleMessage("未知"),
        "error_cancel_not_allowed": MessageLookupByLibrary.simpleMessage(
            "Cancel is not allowed for an already started trip"),
        "error_field_cant_be_empty":
            MessageLookupByLibrary.simpleMessage("不能为空"),
        "firstname": MessageLookupByLibrary.simpleMessage("名"),
        "form_required_field_error":
            MessageLookupByLibrary.simpleMessage("必填项目"),
        "gender": MessageLookupByLibrary.simpleMessage("性别"),
        "gender_female": MessageLookupByLibrary.simpleMessage("女性"),
        "gender_male": MessageLookupByLibrary.simpleMessage("男性"),
        "hard_reject_registration":
            MessageLookupByLibrary.simpleMessage("您的提交被完全拒绝！"),
        "incomplete_registration_description":
            MessageLookupByLibrary.simpleMessage("请填写您的\n 注册提交"),
        "invoice_dialog_body":
            MessageLookupByLibrary.simpleMessage("如果您和作者都愿意，您也可以收到现金而不是在线付款。"),
        "invoice_dialog_heading":
            MessageLookupByLibrary.simpleMessage("等待骑手付款"),
        "invoice_dialog_title": MessageLookupByLibrary.simpleMessage("付款信息"),
        "invoice_item_subtotal": MessageLookupByLibrary.simpleMessage("小计"),
        "invoice_item_tip": MessageLookupByLibrary.simpleMessage("小费"),
        "issue_description_placeholder":
            MessageLookupByLibrary.simpleMessage("描述"),
        "issue_subject_placeholder": MessageLookupByLibrary.simpleMessage("主题"),
        "issue_submit_body": MessageLookupByLibrary.simpleMessage(
            "您可以报告您在骑行过程中遇到的任何问题。我们将在电话中帮助您解决问题。"),
        "issue_submit_title": MessageLookupByLibrary.simpleMessage("报告问题"),
        "languageSettings":
            MessageLookupByLibrary.simpleMessage("Language Settings"),
        "lastname": MessageLookupByLibrary.simpleMessage("姓"),
        "loading": MessageLookupByLibrary.simpleMessage("正在加载"),
        "logout_dialog_body":
            MessageLookupByLibrary.simpleMessage("您确定要退出应用程序吗？"),
        "mapSettings": MessageLookupByLibrary.simpleMessage("Map Settings"),
        "menu_about": MessageLookupByLibrary.simpleMessage("关于"),
        "menu_announcements": MessageLookupByLibrary.simpleMessage("公告"),
        "menu_earnings": MessageLookupByLibrary.simpleMessage("收益"),
        "menu_logout": MessageLookupByLibrary.simpleMessage("登出"),
        "menu_profile": MessageLookupByLibrary.simpleMessage("我的简历"),
        "menu_trip_history": MessageLookupByLibrary.simpleMessage("旅行历史"),
        "menu_wallet": MessageLookupByLibrary.simpleMessage("钱包"),
        "message_cant_open_url": MessageLookupByLibrary.simpleMessage("不支持命令"),
        "message_notification_permission_denined_message":
            MessageLookupByLibrary.simpleMessage(
                "通知权限之前被拒绝。为了获得新的订单通知，您可以从应用设置中启用权限。"),
        "message_notification_permission_title":
            MessageLookupByLibrary.simpleMessage("通知权限"),
        "message_unknown_error": MessageLookupByLibrary.simpleMessage("未知错误"),
        "navigation_dialog_title":
            MessageLookupByLibrary.simpleMessage("选择一个应用程序进行导航"),
        "navigation_dialog_title_pickup_point":
            MessageLookupByLibrary.simpleMessage("导航到上车点"),
        "navigation_title_destination_point":
            MessageLookupByLibrary.simpleMessage("导航到下车点"),
        "onboarding_welcome": MessageLookupByLibrary.simpleMessage("欢迎 ！"),
        "orderStatusCardTitleMultipleDestinations": m7,
        "order_details_payment_method_title":
            MessageLookupByLibrary.simpleMessage("付款方式"),
        "order_details_trip_information_title":
            MessageLookupByLibrary.simpleMessage("行程信息"),
        "order_payment_method_cash": MessageLookupByLibrary.simpleMessage("现金"),
        "order_payment_method_online":
            MessageLookupByLibrary.simpleMessage("在线的"),
        "order_payment_status_paid":
            MessageLookupByLibrary.simpleMessage("骑手已付款"),
        "order_payment_status_unpaid":
            MessageLookupByLibrary.simpleMessage("行程尚未付款"),
        "order_status_action_arrived":
            MessageLookupByLibrary.simpleMessage("到达的"),
        "order_status_action_finished":
            MessageLookupByLibrary.simpleMessage("结束"),
        "order_status_action_navigate":
            MessageLookupByLibrary.simpleMessage("导航"),
        "order_status_action_received_cash":
            MessageLookupByLibrary.simpleMessage("收到现金付款"),
        "order_status_action_start":
            MessageLookupByLibrary.simpleMessage("开始旅行"),
        "order_status_canceled": MessageLookupByLibrary.simpleMessage("取消"),
        "order_status_card_title_arrived":
            MessageLookupByLibrary.simpleMessage("已通知骑手"),
        "order_status_card_title_driver_accepted":
            MessageLookupByLibrary.simpleMessage("一旦您点击到达，骑手将收到通知"),
        "order_status_card_title_started":
            MessageLookupByLibrary.simpleMessage("前往目的地"),
        "pending_review_registration_description":
            MessageLookupByLibrary.simpleMessage("您提交的内容正在审核中，\n 谢谢你的耐心。"),
        "phone_number_empty": MessageLookupByLibrary.simpleMessage("请输入电话号码"),
        "plate_number": MessageLookupByLibrary.simpleMessage("车牌号码"),
        "profile_bank_information_title":
            MessageLookupByLibrary.simpleMessage("银行信息"),
        "profile_distance_traveled":
            MessageLookupByLibrary.simpleMessage("行驶距离"),
        "profile_rating": MessageLookupByLibrary.simpleMessage("评分"),
        "profile_services_title": MessageLookupByLibrary.simpleMessage("服务："),
        "profile_total_trips": MessageLookupByLibrary.simpleMessage("总行程"),
        "profile_uploaded_documents_title":
            MessageLookupByLibrary.simpleMessage("上传文件"),
        "profile_vehicle_information_title":
            MessageLookupByLibrary.simpleMessage("车辆信息"),
        "register_contact_details_title":
            MessageLookupByLibrary.simpleMessage("输入您的联系方式"),
        "register_number_subtitle":
            MessageLookupByLibrary.simpleMessage("我们将向您的号码发送代码以继续注册"),
        "register_number_title":
            MessageLookupByLibrary.simpleMessage("输入你的电话号码"),
        "register_payout_details_title":
            MessageLookupByLibrary.simpleMessage("输入您的付款详情"),
        "register_profile_photo_subtitle":
            MessageLookupByLibrary.simpleMessage("您的脸应该在上传的图像中可以识别"),
        "register_profile_photo_title":
            MessageLookupByLibrary.simpleMessage("上传个人资料照片"),
        "register_ride_details_title":
            MessageLookupByLibrary.simpleMessage("输入您的行程详情"),
        "register_step_contact_details":
            MessageLookupByLibrary.simpleMessage("联系方式"),
        "register_step_payout_details":
            MessageLookupByLibrary.simpleMessage("付款详情"),
        "register_step_phone_number":
            MessageLookupByLibrary.simpleMessage("细胞数量"),
        "register_step_ride_details":
            MessageLookupByLibrary.simpleMessage("骑行详情"),
        "register_step_upload_documents":
            MessageLookupByLibrary.simpleMessage("上传文件"),
        "register_step_verify_number":
            MessageLookupByLibrary.simpleMessage("验证号码"),
        "register_upload_documents_subtitle":
            MessageLookupByLibrary.simpleMessage(
                "为了验证您的身份并遵守规定，我们需要您上传以下文件：\\n1-带照片的身份证件\\n2-驾驶执照\\n3-乘车所有权文件"),
        "register_upload_documents_title":
            MessageLookupByLibrary.simpleMessage("上传所需文件"),
        "register_verify_code_subtitle": m8,
        "register_verify_code_title":
            MessageLookupByLibrary.simpleMessage("输入代码"),
        "ride_preferences_title": MessageLookupByLibrary.simpleMessage("乘坐偏好"),
        "rider_expected_time_future": m9,
        "rider_expected_time_past": m10,
        "rider_options_dialog_title":
            MessageLookupByLibrary.simpleMessage("骑行选项"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "soft_rejection_description":
            MessageLookupByLibrary.simpleMessage("提交有问题"),
        "statusOffline": MessageLookupByLibrary.simpleMessage("上网"),
        "statusOnline": MessageLookupByLibrary.simpleMessage("下线"),
        "status_offline_description":
            MessageLookupByLibrary.simpleMessage("上网查看请求"),
        "status_online_description":
            MessageLookupByLibrary.simpleMessage("寻找搭车"),
        "terms_and_condition_first_part":
            MessageLookupByLibrary.simpleMessage("我已阅读并同意"),
        "terms_and_conditions_clickable_part":
            MessageLookupByLibrary.simpleMessage("条款和条件"),
        "title_important": MessageLookupByLibrary.simpleMessage("重要的！"),
        "title_logout": MessageLookupByLibrary.simpleMessage("登出"),
        "title_success": MessageLookupByLibrary.simpleMessage("成功"),
        "top_up_sheet_pay_button": MessageLookupByLibrary.simpleMessage("支付"),
        "trip_history_empty_state":
            MessageLookupByLibrary.simpleMessage("没有记录过去的订单。"),
        "wallet_activities_heading": MessageLookupByLibrary.simpleMessage("活动"),
        "wallet_card_title": m11,
        "wallet_empty_state_message":
            MessageLookupByLibrary.simpleMessage("没有记录历史。")
      };
}
