// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
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
  String get localeName => 'ru';

  static String m0(destinationIndex) =>
      "Arrived to ${destinationIndex}st destination";

  static String m1(company) => "Copyright © ${company}, Все права защищены.";

  static String m2(distance) => "${distance} away";

  static String m3(distance) => "${distance} ft";

  static String m4(distance) => "${distance} km";

  static String m5(distance) => "${distance} m";

  static String m6(distance) => "${distance} mi";

  static String m7(destinationIndex) =>
      "Heading to ${destinationIndex}st destination";

  static String m8(number) => "Мы отправили код на ${number}";

  static String m9(minutes) => "Райдер ожидает вас через ${minutes}";

  static String m10(minutes) => "Райдер ожидал вас ${minutes} назад";

  static String m11(appName) => "Кошелек ${appName}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "account_number": MessageLookupByLibrary.simpleMessage("Номер счета"),
        "actionArrivedToDestination": m0,
        "action_add_photo":
            MessageLookupByLibrary.simpleMessage("Добавить фото"),
        "action_back": MessageLookupByLibrary.simpleMessage("Назад"),
        "action_cancel": MessageLookupByLibrary.simpleMessage("Отмена"),
        "action_cancel_ride":
            MessageLookupByLibrary.simpleMessage("Отменить поездку"),
        "action_complete_registration":
            MessageLookupByLibrary.simpleMessage("Завершить регистрацию"),
        "action_confirm_and_continue":
            MessageLookupByLibrary.simpleMessage("Подтвердить и продолжить"),
        "action_continue": MessageLookupByLibrary.simpleMessage("Продолжать"),
        "action_delete_account":
            MessageLookupByLibrary.simpleMessage("Удалить аккаунт"),
        "action_edit_submission":
            MessageLookupByLibrary.simpleMessage("Изменить отправку"),
        "action_login_signup":
            MessageLookupByLibrary.simpleMessage("Войти Зарегистрироваться"),
        "action_ok": MessageLookupByLibrary.simpleMessage("ХОРОШО"),
        "action_ride_options":
            MessageLookupByLibrary.simpleMessage("Варианты поездки"),
        "action_ride_preferences":
            MessageLookupByLibrary.simpleMessage("Настройки пользователя"),
        "action_upload_document":
            MessageLookupByLibrary.simpleMessage("Загрузить документ"),
        "add_credit_dialog_choose_amount":
            MessageLookupByLibrary.simpleMessage("Выберите сумму"),
        "add_credit_dialog_select_payment_method":
            MessageLookupByLibrary.simpleMessage("Выберите метод оплаты:"),
        "add_credit_dialog_title":
            MessageLookupByLibrary.simpleMessage("Добавить кредит"),
        "address": MessageLookupByLibrary.simpleMessage("Адрес"),
        "announcements_empty_state_body": MessageLookupByLibrary.simpleMessage(
            "Мы сообщим вам, когда появятся новые объявления."),
        "announcements_empty_state_title":
            MessageLookupByLibrary.simpleMessage("Объявлений пока нет!"),
        "available_order_action_accept":
            MessageLookupByLibrary.simpleMessage("Принять заказ"),
        "bankRoutingNumber":
            MessageLookupByLibrary.simpleMessage("Маршрутный номер банка"),
        "bank_name": MessageLookupByLibrary.simpleMessage("Название банка"),
        "bank_swift": MessageLookupByLibrary.simpleMessage("Банк Свифт"),
        "button_report_issue":
            MessageLookupByLibrary.simpleMessage("Сообщить о проблеме"),
        "car_color": MessageLookupByLibrary.simpleMessage("Цвет автомобиля"),
        "car_model": MessageLookupByLibrary.simpleMessage("Модель автомобиля"),
        "car_production_year":
            MessageLookupByLibrary.simpleMessage("Производственный год"),
        "cell_number": MessageLookupByLibrary.simpleMessage("Сотовый номер"),
        "certificate_number":
            MessageLookupByLibrary.simpleMessage("Номер сертификата"),
        "complaint_submit_success_message": MessageLookupByLibrary.simpleMessage(
            "Жалоба подается. Пожалуйста, подождите, пока наш представитель службы поддержки свяжется с вами по поводу вашего запроса."),
        "copyright_notice": m1,
        "dialog_account_deletion_body": MessageLookupByLibrary.simpleMessage(
            "Вы уверены, что хотите удалить свой аккаунт? Вы можете снова войти в систему в течение 30 дней, чтобы восстановить учетную запись. По истечении этого периода ваши данные будут полностью удалены, включая все оставшиеся кредиты."),
        "dialog_account_deletion_title":
            MessageLookupByLibrary.simpleMessage("Удаление аккаунта"),
        "distanceAway": m2,
        "distanceFeet": m3,
        "distanceKm": m4,
        "distanceMeters": m5,
        "distanceMiles": m6,
        "driver_register_contact_details_title":
            MessageLookupByLibrary.simpleMessage("Контактная информация"),
        "driver_register_document_first":
            MessageLookupByLibrary.simpleMessage("1-ID"),
        "driver_register_document_second":
            MessageLookupByLibrary.simpleMessage("2-водительские права"),
        "driver_register_document_third": MessageLookupByLibrary.simpleMessage(
            "Документ о праве собственности 3-Ride"),
        "driver_register_profile_submitted_message":
            MessageLookupByLibrary.simpleMessage(
                "Ваш профиль отправлен на утверждение администратора. Вы можете вернуться позже, чтобы увидеть статус вашего представления."),
        "driver_register_ride_details_step_title":
            MessageLookupByLibrary.simpleMessage("Детали поездки"),
        "driver_register_step_documents_heading":
            MessageLookupByLibrary.simpleMessage(
                "Чтобы проверить вышеуказанные документы, нам необходимо загрузить следующие документы."),
        "driver_register_step_documents_title":
            MessageLookupByLibrary.simpleMessage("Документы"),
        "driver_register_step_payout_details_title":
            MessageLookupByLibrary.simpleMessage("Детали выплаты"),
        "driver_register_title":
            MessageLookupByLibrary.simpleMessage("Регистрация водителя"),
        "driver_register_verification_code_textfield_hint":
            MessageLookupByLibrary.simpleMessage("Код подтверждения"),
        "driver_registration_approved_demo_mode":
            MessageLookupByLibrary.simpleMessage(
                "Обычно на этом этапе администратору необходимо одобрить отправку драйвера из панели администратора. Однако ради демонстрации ваш профиль теперь автоматически одобрен и готов к использованию."),
        "driver_registration_step_verify_number_title":
            MessageLookupByLibrary.simpleMessage("Подтвердить номер"),
        "earnings_empty_state_body": MessageLookupByLibrary.simpleMessage(
            "По указанным выше критериям мы не можем найти ни одной записи."),
        "email": MessageLookupByLibrary.simpleMessage("Эл. почта"),
        "empty_state_title_no_record":
            MessageLookupByLibrary.simpleMessage("Данные не найдены!"),
        "enum_driver_deduct_transaction_type_commission":
            MessageLookupByLibrary.simpleMessage("комиссия"),
        "enum_driver_deduct_transaction_type_correction":
            MessageLookupByLibrary.simpleMessage("Коррекция"),
        "enum_driver_deduct_transaction_type_withdraw":
            MessageLookupByLibrary.simpleMessage("Отзывать"),
        "enum_driver_recharge_transaction_type_order_fee":
            MessageLookupByLibrary.simpleMessage("Плата за заказ"),
        "enum_driver_recharge_type_bank_transfer":
            MessageLookupByLibrary.simpleMessage("Банковский перевод"),
        "enum_driver_recharge_type_gift":
            MessageLookupByLibrary.simpleMessage("Подарок"),
        "enum_driver_recharge_type_in_app_payment":
            MessageLookupByLibrary.simpleMessage("Оплата в приложении"),
        "enum_unknown": MessageLookupByLibrary.simpleMessage("Неизвестный"),
        "error_cancel_not_allowed": MessageLookupByLibrary.simpleMessage(
            "Cancel is not allowed for an already started trip"),
        "error_field_cant_be_empty":
            MessageLookupByLibrary.simpleMessage("Не может быть пустым"),
        "firstname": MessageLookupByLibrary.simpleMessage("Имя"),
        "form_required_field_error":
            MessageLookupByLibrary.simpleMessage("Обязательное поле"),
        "gender": MessageLookupByLibrary.simpleMessage("Пол"),
        "gender_female": MessageLookupByLibrary.simpleMessage("женский"),
        "gender_male": MessageLookupByLibrary.simpleMessage("Мужской"),
        "hard_reject_registration": MessageLookupByLibrary.simpleMessage(
            "Ваша заявка полностью отклонена!"),
        "incomplete_registration_description":
            MessageLookupByLibrary.simpleMessage(
                "Пожалуйста, заполните\n подача заявки на регистрацию"),
        "invoice_dialog_body": MessageLookupByLibrary.simpleMessage(
            "Вы также можете получить наличные вместо онлайн-платежа, если вы и автор готовы к этому."),
        "invoice_dialog_heading":
            MessageLookupByLibrary.simpleMessage("Ожидание оплаты райдера"),
        "invoice_dialog_title":
            MessageLookupByLibrary.simpleMessage("Платежная информация"),
        "invoice_item_subtotal":
            MessageLookupByLibrary.simpleMessage("Промежуточный итог"),
        "invoice_item_tip": MessageLookupByLibrary.simpleMessage("Кончик"),
        "issue_description_placeholder":
            MessageLookupByLibrary.simpleMessage("Описание"),
        "issue_subject_placeholder":
            MessageLookupByLibrary.simpleMessage("Предмет"),
        "issue_submit_body": MessageLookupByLibrary.simpleMessage(
            "Вы можете сообщить о любой проблеме, возникшей во время поездки. Поможем решить вопрос в рамках звонка."),
        "issue_submit_title":
            MessageLookupByLibrary.simpleMessage("Сообщить о проблеме"),
        "languageSettings":
            MessageLookupByLibrary.simpleMessage("Language Settings"),
        "lastname": MessageLookupByLibrary.simpleMessage("Фамилия"),
        "loading": MessageLookupByLibrary.simpleMessage("ЗАГРУЗКА"),
        "logout_dialog_body": MessageLookupByLibrary.simpleMessage(
            "Вы уверены, что хотите выйти из приложения?"),
        "mapSettings": MessageLookupByLibrary.simpleMessage("Map Settings"),
        "menu_about": MessageLookupByLibrary.simpleMessage("О"),
        "menu_announcements":
            MessageLookupByLibrary.simpleMessage("Объявления"),
        "menu_earnings": MessageLookupByLibrary.simpleMessage("Доход"),
        "menu_logout": MessageLookupByLibrary.simpleMessage("Выйти"),
        "menu_profile": MessageLookupByLibrary.simpleMessage("Мой профиль"),
        "menu_trip_history":
            MessageLookupByLibrary.simpleMessage("История поездок"),
        "menu_wallet": MessageLookupByLibrary.simpleMessage("Бумажник"),
        "message_cant_open_url":
            MessageLookupByLibrary.simpleMessage("Команда не поддерживается"),
        "message_notification_permission_denined_message":
            MessageLookupByLibrary.simpleMessage(
                "Ранее разрешение на уведомление было отклонено. Чтобы получать уведомления о новых заказах, вы можете включить разрешение в настройках приложения."),
        "message_notification_permission_title":
            MessageLookupByLibrary.simpleMessage("Разрешение на уведомление"),
        "message_unknown_error":
            MessageLookupByLibrary.simpleMessage("Неизвестная ошибка"),
        "navigation_dialog_title": MessageLookupByLibrary.simpleMessage(
            "Выберите приложение для навигации"),
        "navigation_dialog_title_pickup_point":
            MessageLookupByLibrary.simpleMessage("Направиться к пункту выдачи"),
        "navigation_title_destination_point":
            MessageLookupByLibrary.simpleMessage("Перейдите к месту высадки"),
        "onboarding_welcome":
            MessageLookupByLibrary.simpleMessage("Добро пожаловать !"),
        "orderStatusCardTitleMultipleDestinations": m7,
        "order_details_payment_method_title":
            MessageLookupByLibrary.simpleMessage("Метод оплаты"),
        "order_details_trip_information_title":
            MessageLookupByLibrary.simpleMessage("Информация о поездке"),
        "order_payment_method_cash":
            MessageLookupByLibrary.simpleMessage("Наличные"),
        "order_payment_method_online":
            MessageLookupByLibrary.simpleMessage("онлайн"),
        "order_payment_status_paid":
            MessageLookupByLibrary.simpleMessage("Райдер был оплачен"),
        "order_payment_status_unpaid":
            MessageLookupByLibrary.simpleMessage("Поездка еще не оплачена"),
        "order_status_action_arrived":
            MessageLookupByLibrary.simpleMessage("Прибыли"),
        "order_status_action_finished":
            MessageLookupByLibrary.simpleMessage("Заканчивать"),
        "order_status_action_navigate":
            MessageLookupByLibrary.simpleMessage("Навигация"),
        "order_status_action_received_cash":
            MessageLookupByLibrary.simpleMessage("Оплата наличными получена"),
        "order_status_action_start":
            MessageLookupByLibrary.simpleMessage("Начать поездку"),
        "order_status_canceled":
            MessageLookupByLibrary.simpleMessage("Отменено"),
        "order_status_card_title_arrived":
            MessageLookupByLibrary.simpleMessage("Райдер был уведомлен"),
        "order_status_card_title_driver_accepted":
            MessageLookupByLibrary.simpleMessage(
                "Пользователь получит уведомление, как только вы нажмете «Прибыл»."),
        "order_status_card_title_started": MessageLookupByLibrary.simpleMessage(
            "Направление к месту назначения"),
        "pending_review_registration_description":
            MessageLookupByLibrary.simpleMessage(
                "Ваша заявка находится на рассмотрении,\n Спасибо за терпение."),
        "phone_number_empty": MessageLookupByLibrary.simpleMessage(
            "Пожалуйста, введите номер телефона"),
        "plate_number": MessageLookupByLibrary.simpleMessage("Номерной знак"),
        "profile_bank_information_title":
            MessageLookupByLibrary.simpleMessage("Банковская информация"),
        "profile_distance_traveled":
            MessageLookupByLibrary.simpleMessage("Пройденный путь"),
        "profile_rating": MessageLookupByLibrary.simpleMessage("Рейтинг"),
        "profile_services_title":
            MessageLookupByLibrary.simpleMessage("Услуги:"),
        "profile_total_trips":
            MessageLookupByLibrary.simpleMessage("Всего поездок"),
        "profile_uploaded_documents_title":
            MessageLookupByLibrary.simpleMessage("Загруженные документы"),
        "profile_vehicle_information_title":
            MessageLookupByLibrary.simpleMessage("Информация об автомобиле"),
        "register_contact_details_title": MessageLookupByLibrary.simpleMessage(
            "Введите свои контактные данные"),
        "register_number_subtitle": MessageLookupByLibrary.simpleMessage(
            "Мы отправим код на ваш номер для продолжения регистрации"),
        "register_number_title":
            MessageLookupByLibrary.simpleMessage("Введите свой номер телефона"),
        "register_payout_details_title":
            MessageLookupByLibrary.simpleMessage("Введите данные для выплаты"),
        "register_profile_photo_subtitle": MessageLookupByLibrary.simpleMessage(
            "Ваше лицо должно быть узнаваемо на загруженном изображении"),
        "register_profile_photo_title":
            MessageLookupByLibrary.simpleMessage("Загрузить фото профиля"),
        "register_ride_details_title":
            MessageLookupByLibrary.simpleMessage("Введите данные о поездке"),
        "register_step_contact_details":
            MessageLookupByLibrary.simpleMessage("Контактная информация"),
        "register_step_payout_details":
            MessageLookupByLibrary.simpleMessage("Детали выплаты"),
        "register_step_phone_number":
            MessageLookupByLibrary.simpleMessage("Сотовый номер"),
        "register_step_ride_details":
            MessageLookupByLibrary.simpleMessage("Детали поездки"),
        "register_step_upload_documents":
            MessageLookupByLibrary.simpleMessage("Загрузить документы"),
        "register_step_verify_number":
            MessageLookupByLibrary.simpleMessage("Подтвердить номер"),
        "register_upload_documents_subtitle": MessageLookupByLibrary.simpleMessage(
            "Чтобы подтвердить вашу личность и соблюдать правила, нам нужно, чтобы вы загрузили следующие документы: \\n1-Удостоверение личности с фотографией\\n2-Водительские права\\n3-Документ о праве собственности на автомобиль"),
        "register_upload_documents_title": MessageLookupByLibrary.simpleMessage(
            "Загрузите необходимые документы"),
        "register_verify_code_subtitle": m8,
        "register_verify_code_title":
            MessageLookupByLibrary.simpleMessage("Введите код"),
        "ride_preferences_title":
            MessageLookupByLibrary.simpleMessage("Настройки поездки"),
        "rider_expected_time_future": m9,
        "rider_expected_time_past": m10,
        "rider_options_dialog_title":
            MessageLookupByLibrary.simpleMessage("Варианты поездки"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "soft_rejection_description": MessageLookupByLibrary.simpleMessage(
            "Возникла проблема с отправкой"),
        "statusOffline": MessageLookupByLibrary.simpleMessage("Выйти в онлайн"),
        "statusOnline":
            MessageLookupByLibrary.simpleMessage("Перейти в автономный режим"),
        "status_offline_description": MessageLookupByLibrary.simpleMessage(
            "Подключитесь к Интернету, чтобы увидеть запросы"),
        "status_online_description":
            MessageLookupByLibrary.simpleMessage("Поиск поездки"),
        "terms_and_condition_first_part":
            MessageLookupByLibrary.simpleMessage("Я прочитал и согласен с"),
        "terms_and_conditions_clickable_part":
            MessageLookupByLibrary.simpleMessage("Условия"),
        "title_important": MessageLookupByLibrary.simpleMessage("ВАЖНЫЙ!"),
        "title_logout": MessageLookupByLibrary.simpleMessage("Выйти"),
        "title_success": MessageLookupByLibrary.simpleMessage("Успех"),
        "top_up_sheet_pay_button":
            MessageLookupByLibrary.simpleMessage("Платить"),
        "trip_history_empty_state": MessageLookupByLibrary.simpleMessage(
            "Прошлый заказ не зарегистрирован."),
        "wallet_activities_heading":
            MessageLookupByLibrary.simpleMessage("мероприятия"),
        "wallet_card_title": m11,
        "wallet_empty_state_message":
            MessageLookupByLibrary.simpleMessage("История не записана.")
      };
}
