// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a es locale. All the
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
  String get localeName => 'es';

  static String m0(destinationIndex) =>
      "Arrived to ${destinationIndex}st destination";

  static String m1(company) =>
      "Copyright © ${company}, Todos los derechos reservados.";

  static String m2(distance) => "${distance} away";

  static String m3(distance) => "${distance} ft";

  static String m4(distance) => "${distance} km";

  static String m5(distance) => "${distance} m";

  static String m6(distance) => "${distance} mi";

  static String m7(destinationIndex) =>
      "Heading to ${destinationIndex}st destination";

  static String m8(number) => "Hemos enviado un código a ${number}";

  static String m9(minutes) => "Rider te espera en ${minutes}";

  static String m10(minutes) => "Rider te esperaba hace ${minutes}";

  static String m11(appName) => "Billetera ${appName}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "account_number":
            MessageLookupByLibrary.simpleMessage("Número de cuenta"),
        "actionArrivedToDestination": m0,
        "action_add_photo": MessageLookupByLibrary.simpleMessage("Añadir foto"),
        "action_back": MessageLookupByLibrary.simpleMessage("atrás"),
        "action_cancel": MessageLookupByLibrary.simpleMessage("Cancelar"),
        "action_cancel_ride":
            MessageLookupByLibrary.simpleMessage("Cancelar viaje"),
        "action_complete_registration":
            MessageLookupByLibrary.simpleMessage("Registro completo"),
        "action_confirm_and_continue":
            MessageLookupByLibrary.simpleMessage("Confirmar y continuar"),
        "action_continue": MessageLookupByLibrary.simpleMessage("Continuar"),
        "action_delete_account":
            MessageLookupByLibrary.simpleMessage("Borrar cuenta"),
        "action_edit_submission":
            MessageLookupByLibrary.simpleMessage("Editar envío"),
        "action_login_signup":
            MessageLookupByLibrary.simpleMessage("Iniciar sesión Registrarse"),
        "action_ok": MessageLookupByLibrary.simpleMessage("OK"),
        "action_ride_options":
            MessageLookupByLibrary.simpleMessage("Opciones de viaje"),
        "action_ride_preferences":
            MessageLookupByLibrary.simpleMessage("Preferencias del pasajero"),
        "action_upload_document":
            MessageLookupByLibrary.simpleMessage("Subir documento"),
        "add_credit_dialog_choose_amount":
            MessageLookupByLibrary.simpleMessage("Elija la cantidad"),
        "add_credit_dialog_select_payment_method":
            MessageLookupByLibrary.simpleMessage(
                "Seleccione el método de pago:"),
        "add_credit_dialog_title":
            MessageLookupByLibrary.simpleMessage("Añadir crédito"),
        "address": MessageLookupByLibrary.simpleMessage("Dirección"),
        "announcements_empty_state_body": MessageLookupByLibrary.simpleMessage(
            "Te avisaremos cuando lleguen nuevos anuncios."),
        "announcements_empty_state_title":
            MessageLookupByLibrary.simpleMessage("¡Aún no hay anuncios!"),
        "available_order_action_accept":
            MessageLookupByLibrary.simpleMessage("Aceptar pedido"),
        "bankRoutingNumber":
            MessageLookupByLibrary.simpleMessage("Número de ruta bancaria"),
        "bank_name": MessageLookupByLibrary.simpleMessage("Nombre del banco"),
        "bank_swift": MessageLookupByLibrary.simpleMessage("banco rápido"),
        "button_report_issue":
            MessageLookupByLibrary.simpleMessage("Reportar un problema"),
        "car_color": MessageLookupByLibrary.simpleMessage("Color del coche"),
        "car_model": MessageLookupByLibrary.simpleMessage("Modelo de auto"),
        "car_production_year":
            MessageLookupByLibrary.simpleMessage("Año productivo"),
        "cell_number":
            MessageLookupByLibrary.simpleMessage("Numero de celular"),
        "certificate_number":
            MessageLookupByLibrary.simpleMessage("Número certificado"),
        "complaint_submit_success_message": MessageLookupByLibrary.simpleMessage(
            "Se presenta denuncia. Espere un contacto de nuestro representante de soporte sobre su consulta."),
        "copyright_notice": m1,
        "dialog_account_deletion_body": MessageLookupByLibrary.simpleMessage(
            "¿Está seguro de que desea eliminar su cuenta? Puede iniciar sesión nuevamente dentro de los 30 días para restaurar la cuenta. Después de este período, sus datos se eliminan por completo, incluidos todos sus créditos restantes."),
        "dialog_account_deletion_title":
            MessageLookupByLibrary.simpleMessage("Eliminación de cuenta"),
        "distanceAway": m2,
        "distanceFeet": m3,
        "distanceKm": m4,
        "distanceMeters": m5,
        "distanceMiles": m6,
        "driver_register_contact_details_title":
            MessageLookupByLibrary.simpleMessage("Detalles de contacto"),
        "driver_register_document_first":
            MessageLookupByLibrary.simpleMessage("1-identificación"),
        "driver_register_document_second":
            MessageLookupByLibrary.simpleMessage("2-Licencia de conducir"),
        "driver_register_document_third": MessageLookupByLibrary.simpleMessage(
            "Documento de propiedad de 3-Ride"),
        "driver_register_profile_submitted_message":
            MessageLookupByLibrary.simpleMessage(
                "Su perfil se envía para la aprobación del administrador. Puede volver a consultar más tarde para ver el estado de su envío."),
        "driver_register_ride_details_step_title":
            MessageLookupByLibrary.simpleMessage("Detalles del viaje"),
        "driver_register_step_documents_heading":
            MessageLookupByLibrary.simpleMessage(
                "Para verificar los documentos anteriores, requerimos que se carguen los siguientes documentos"),
        "driver_register_step_documents_title":
            MessageLookupByLibrary.simpleMessage("Documentos"),
        "driver_register_step_payout_details_title":
            MessageLookupByLibrary.simpleMessage("Detalles de pago"),
        "driver_register_title":
            MessageLookupByLibrary.simpleMessage("Registro de conductor"),
        "driver_register_verification_code_textfield_hint":
            MessageLookupByLibrary.simpleMessage("Código de verificación"),
        "driver_registration_approved_demo_mode":
            MessageLookupByLibrary.simpleMessage(
                "Normalmente, en esta etapa, el administrador necesitaría aprobar el envío del controlador desde el Panel de administración. Sin embargo, por el bien de la demostración, su perfil se aprueba automáticamente ahora y está listo para usar."),
        "driver_registration_step_verify_number_title":
            MessageLookupByLibrary.simpleMessage("Verificar número"),
        "earnings_empty_state_body": MessageLookupByLibrary.simpleMessage(
            "Con los criterios establecidos anteriormente, no podemos encontrar ningún registro."),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "empty_state_title_no_record":
            MessageLookupByLibrary.simpleMessage("¡Datos no encontrados!"),
        "enum_driver_deduct_transaction_type_commission":
            MessageLookupByLibrary.simpleMessage("Comisión"),
        "enum_driver_deduct_transaction_type_correction":
            MessageLookupByLibrary.simpleMessage("Corrección"),
        "enum_driver_deduct_transaction_type_withdraw":
            MessageLookupByLibrary.simpleMessage("Retirar"),
        "enum_driver_recharge_transaction_type_order_fee":
            MessageLookupByLibrary.simpleMessage("Tarifa de pedido"),
        "enum_driver_recharge_type_bank_transfer":
            MessageLookupByLibrary.simpleMessage("Transferencia bancaria"),
        "enum_driver_recharge_type_gift":
            MessageLookupByLibrary.simpleMessage("Regalo"),
        "enum_driver_recharge_type_in_app_payment":
            MessageLookupByLibrary.simpleMessage("Pago en la aplicación"),
        "enum_unknown": MessageLookupByLibrary.simpleMessage("Desconocido"),
        "error_cancel_not_allowed": MessageLookupByLibrary.simpleMessage(
            "Cancel is not allowed for an already started trip"),
        "error_field_cant_be_empty":
            MessageLookupByLibrary.simpleMessage("No puede estar vacío"),
        "firstname": MessageLookupByLibrary.simpleMessage("Primer nombre"),
        "form_required_field_error":
            MessageLookupByLibrary.simpleMessage("Campo requerido"),
        "gender": MessageLookupByLibrary.simpleMessage("Género"),
        "gender_female": MessageLookupByLibrary.simpleMessage("Femenino"),
        "gender_male": MessageLookupByLibrary.simpleMessage("Masculino"),
        "hard_reject_registration": MessageLookupByLibrary.simpleMessage(
            "¡Su envío ha sido rechazado por completo!"),
        "incomplete_registration_description":
            MessageLookupByLibrary.simpleMessage(
                "Por favor complete su\n presentación de registro"),
        "invoice_dialog_body": MessageLookupByLibrary.simpleMessage(
            "También puede recibir efectivo en lugar de un pago en línea si usted y el escritor están dispuestos a hacerlo."),
        "invoice_dialog_heading": MessageLookupByLibrary.simpleMessage(
            "Esperando el pago del pasajero"),
        "invoice_dialog_title":
            MessageLookupByLibrary.simpleMessage("Información de pago"),
        "invoice_item_subtotal":
            MessageLookupByLibrary.simpleMessage("Total parcial"),
        "invoice_item_tip": MessageLookupByLibrary.simpleMessage("Consejo"),
        "issue_description_placeholder":
            MessageLookupByLibrary.simpleMessage("Descripción"),
        "issue_subject_placeholder":
            MessageLookupByLibrary.simpleMessage("Tema"),
        "issue_submit_body": MessageLookupByLibrary.simpleMessage(
            "Puede informar cualquier problema que haya tenido con su viaje. Le ayudaremos con el problema dentro de una llamada."),
        "issue_submit_title":
            MessageLookupByLibrary.simpleMessage("Reportar un problema"),
        "languageSettings":
            MessageLookupByLibrary.simpleMessage("Language Settings"),
        "lastname": MessageLookupByLibrary.simpleMessage("Apellido"),
        "loading": MessageLookupByLibrary.simpleMessage("CARGANDO"),
        "logout_dialog_body": MessageLookupByLibrary.simpleMessage(
            "¿Está seguro de que desea cerrar sesión en la aplicación?"),
        "mapSettings": MessageLookupByLibrary.simpleMessage("Map Settings"),
        "menu_about": MessageLookupByLibrary.simpleMessage("Sobre"),
        "menu_announcements": MessageLookupByLibrary.simpleMessage("Anuncios"),
        "menu_earnings": MessageLookupByLibrary.simpleMessage("Ganancias"),
        "menu_logout": MessageLookupByLibrary.simpleMessage("Cerrar sesión"),
        "menu_profile": MessageLookupByLibrary.simpleMessage("Mi perfil"),
        "menu_trip_history":
            MessageLookupByLibrary.simpleMessage("Historial de viajes"),
        "menu_wallet": MessageLookupByLibrary.simpleMessage("Cartera"),
        "message_cant_open_url":
            MessageLookupByLibrary.simpleMessage("El comando no es compatible"),
        "message_notification_permission_denined_message":
            MessageLookupByLibrary.simpleMessage(
                "El permiso de notificación fue denegado anteriormente. Para recibir notificaciones de nuevos pedidos, puede habilitar el permiso desde la configuración de la aplicación."),
        "message_notification_permission_title":
            MessageLookupByLibrary.simpleMessage("Permiso de notificación"),
        "message_unknown_error":
            MessageLookupByLibrary.simpleMessage("Error desconocido"),
        "navigation_dialog_title": MessageLookupByLibrary.simpleMessage(
            "Elija una aplicación para navegar"),
        "navigation_dialog_title_pickup_point":
            MessageLookupByLibrary.simpleMessage(
                "Navegar al punto de recogida"),
        "navigation_title_destination_point":
            MessageLookupByLibrary.simpleMessage("Navegar al punto de entrega"),
        "onboarding_welcome":
            MessageLookupByLibrary.simpleMessage("Bienvenidos !"),
        "orderStatusCardTitleMultipleDestinations": m7,
        "order_details_payment_method_title":
            MessageLookupByLibrary.simpleMessage("Método de pago"),
        "order_details_trip_information_title":
            MessageLookupByLibrary.simpleMessage("Información del viaje"),
        "order_payment_method_cash":
            MessageLookupByLibrary.simpleMessage("Dinero"),
        "order_payment_method_online":
            MessageLookupByLibrary.simpleMessage("En línea"),
        "order_payment_status_paid":
            MessageLookupByLibrary.simpleMessage("Jinete ha sido pagado"),
        "order_payment_status_unpaid": MessageLookupByLibrary.simpleMessage(
            "El viaje aún no se ha pagado"),
        "order_status_action_arrived":
            MessageLookupByLibrary.simpleMessage("Llegado"),
        "order_status_action_finished":
            MessageLookupByLibrary.simpleMessage("Finalizar"),
        "order_status_action_navigate":
            MessageLookupByLibrary.simpleMessage("Navegar"),
        "order_status_action_received_cash":
            MessageLookupByLibrary.simpleMessage("Pago en efectivo recibido"),
        "order_status_action_start":
            MessageLookupByLibrary.simpleMessage("Iniciar viaje"),
        "order_status_canceled":
            MessageLookupByLibrary.simpleMessage("Cancelado"),
        "order_status_card_title_arrived": MessageLookupByLibrary.simpleMessage(
            "El ciclista ha sido notificado"),
        "order_status_card_title_driver_accepted":
            MessageLookupByLibrary.simpleMessage(
                "El pasajero será notificado una vez que toque Llegado"),
        "order_status_card_title_started":
            MessageLookupByLibrary.simpleMessage("Rumbo al destino"),
        "pending_review_registration_description":
            MessageLookupByLibrary.simpleMessage(
                "Su envío está bajo revisión,\n Gracias por la paciencia."),
        "phone_number_empty": MessageLookupByLibrary.simpleMessage(
            "Por favor ingrese el número de teléfono"),
        "plate_number": MessageLookupByLibrary.simpleMessage("Número de placa"),
        "profile_bank_information_title":
            MessageLookupByLibrary.simpleMessage("Información bancaria"),
        "profile_distance_traveled":
            MessageLookupByLibrary.simpleMessage("Distancia viajada"),
        "profile_rating": MessageLookupByLibrary.simpleMessage("Clasificación"),
        "profile_services_title":
            MessageLookupByLibrary.simpleMessage("Servicios:"),
        "profile_total_trips":
            MessageLookupByLibrary.simpleMessage("Viajes totales"),
        "profile_uploaded_documents_title":
            MessageLookupByLibrary.simpleMessage("Documentos subidos"),
        "profile_vehicle_information_title":
            MessageLookupByLibrary.simpleMessage("Información del vehículo"),
        "register_contact_details_title": MessageLookupByLibrary.simpleMessage(
            "Introduce tus datos de contacto"),
        "register_number_subtitle": MessageLookupByLibrary.simpleMessage(
            "Te enviaremos un código a tu número para continuar con el registro"),
        "register_number_title": MessageLookupByLibrary.simpleMessage(
            "Ingrese su número telefónico"),
        "register_payout_details_title": MessageLookupByLibrary.simpleMessage(
            "Ingrese los detalles de su pago"),
        "register_profile_photo_subtitle": MessageLookupByLibrary.simpleMessage(
            "Su cara debe ser reconocible en la imagen cargada"),
        "register_profile_photo_title":
            MessageLookupByLibrary.simpleMessage("Subir foto de perfil"),
        "register_ride_details_title": MessageLookupByLibrary.simpleMessage(
            "Ingrese los detalles de su viaje"),
        "register_step_contact_details":
            MessageLookupByLibrary.simpleMessage("Detalles de contacto"),
        "register_step_payout_details":
            MessageLookupByLibrary.simpleMessage("Detalles de pago"),
        "register_step_phone_number":
            MessageLookupByLibrary.simpleMessage("Numero de celular"),
        "register_step_ride_details":
            MessageLookupByLibrary.simpleMessage("Detalles del viaje"),
        "register_step_upload_documents":
            MessageLookupByLibrary.simpleMessage("subir documentos"),
        "register_step_verify_number":
            MessageLookupByLibrary.simpleMessage("Verificar número"),
        "register_upload_documents_subtitle": MessageLookupByLibrary.simpleMessage(
            "Para verificar su identidad y cumplir con las regulaciones, necesitaremos que cargue los siguientes documentos: \\n1-Identificación con foto\\n2-Licencia de conducir\\n3-Documento de propiedad del viaje"),
        "register_upload_documents_title":
            MessageLookupByLibrary.simpleMessage("Subir documentos requeridos"),
        "register_verify_code_subtitle": m8,
        "register_verify_code_title":
            MessageLookupByLibrary.simpleMessage("Introduzca el código"),
        "ride_preferences_title":
            MessageLookupByLibrary.simpleMessage("Preferencias de viaje"),
        "rider_expected_time_future": m9,
        "rider_expected_time_past": m10,
        "rider_options_dialog_title":
            MessageLookupByLibrary.simpleMessage("Opciones de viaje"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "soft_rejection_description": MessageLookupByLibrary.simpleMessage(
            "Hay un problema con el envío."),
        "statusOffline": MessageLookupByLibrary.simpleMessage("Ir en línea"),
        "statusOnline": MessageLookupByLibrary.simpleMessage("Salir de línea"),
        "status_offline_description": MessageLookupByLibrary.simpleMessage(
            "Conéctese en línea para ver las solicitudes"),
        "status_online_description":
            MessageLookupByLibrary.simpleMessage("Buscando paseo"),
        "terms_and_condition_first_part": MessageLookupByLibrary.simpleMessage(
            "He leído y estoy de acuerdo con"),
        "terms_and_conditions_clickable_part":
            MessageLookupByLibrary.simpleMessage("Términos y condiciones"),
        "title_important": MessageLookupByLibrary.simpleMessage("¡IMPORTANTE!"),
        "title_logout": MessageLookupByLibrary.simpleMessage("Cerrar sesión"),
        "title_success": MessageLookupByLibrary.simpleMessage("Éxito"),
        "top_up_sheet_pay_button":
            MessageLookupByLibrary.simpleMessage("Pagar"),
        "trip_history_empty_state": MessageLookupByLibrary.simpleMessage(
            "No se ha registrado ningún pedido anterior."),
        "wallet_activities_heading":
            MessageLookupByLibrary.simpleMessage("Actividades"),
        "wallet_card_title": m11,
        "wallet_empty_state_message": MessageLookupByLibrary.simpleMessage(
            "Sin antecedentes registrados.")
      };
}
