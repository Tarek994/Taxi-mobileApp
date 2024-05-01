// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a pt locale. All the
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
  String get localeName => 'pt';

  static String m0(destinationIndex) =>
      "Arrived to ${destinationIndex}st destination";

  static String m1(company) =>
      "Copyright © ${company}, Todos os direitos reservados.";

  static String m2(distance) => "${distance} até o fim";

  static String m3(distance) => "${distance} ft";

  static String m4(distance) => "${distance} km";

  static String m5(distance) => "${distance} m";

  static String m6(distance) => "${distance} mi";

  static String m7(destinationIndex) =>
      "Heading to ${destinationIndex}st destination";

  static String m8(number) => "Enviamos um código para ${number}";

  static String m9(minutes) => "O passageiro espera por você em ${minutes}";

  static String m10(minutes) => "O passageiro esperava você ${minutes} atrás";

  static String m11(appName) => "${appName} Carteira";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "account_number":
            MessageLookupByLibrary.simpleMessage("Número da conta"),
        "actionArrivedToDestination": m0,
        "action_add_photo":
            MessageLookupByLibrary.simpleMessage("Adicionar foto"),
        "action_back": MessageLookupByLibrary.simpleMessage("Voltar"),
        "action_cancel": MessageLookupByLibrary.simpleMessage("Cancelar"),
        "action_cancel_ride":
            MessageLookupByLibrary.simpleMessage("Cancelar viagem"),
        "action_complete_registration":
            MessageLookupByLibrary.simpleMessage("Cadastro completo"),
        "action_confirm_and_continue":
            MessageLookupByLibrary.simpleMessage("Confirmar e continuar"),
        "action_continue": MessageLookupByLibrary.simpleMessage("Continuar"),
        "action_delete_account":
            MessageLookupByLibrary.simpleMessage("Deletar conta"),
        "action_edit_submission":
            MessageLookupByLibrary.simpleMessage("Editar o envio"),
        "action_login_signup":
            MessageLookupByLibrary.simpleMessage("Entrar / Cadastre-se"),
        "action_ok": MessageLookupByLibrary.simpleMessage("OK"),
        "action_ride_options":
            MessageLookupByLibrary.simpleMessage("Opções da viagem"),
        "action_ride_preferences":
            MessageLookupByLibrary.simpleMessage("Preferências do passageiro"),
        "action_upload_document":
            MessageLookupByLibrary.simpleMessage("Carregar documento"),
        "add_credit_dialog_choose_amount":
            MessageLookupByLibrary.simpleMessage("Escolha o valor"),
        "add_credit_dialog_select_payment_method":
            MessageLookupByLibrary.simpleMessage(
                "Selecione o método de pagamento:"),
        "add_credit_dialog_title":
            MessageLookupByLibrary.simpleMessage("Adicionar crédito"),
        "address": MessageLookupByLibrary.simpleMessage("Endereço"),
        "announcements_empty_state_body": MessageLookupByLibrary.simpleMessage(
            "Vamos notificá-lo quando novos anúncios chegarem."),
        "announcements_empty_state_title":
            MessageLookupByLibrary.simpleMessage("Nenhum anúncio!"),
        "available_order_action_accept":
            MessageLookupByLibrary.simpleMessage("Aceitar pedido"),
        "bankRoutingNumber":
            MessageLookupByLibrary.simpleMessage("Código do banco"),
        "bank_name": MessageLookupByLibrary.simpleMessage("Nome do banco"),
        "bank_swift":
            MessageLookupByLibrary.simpleMessage("Código swift do banco"),
        "button_report_issue":
            MessageLookupByLibrary.simpleMessage("Informar um problema"),
        "car_color": MessageLookupByLibrary.simpleMessage("Cor do carro"),
        "car_model": MessageLookupByLibrary.simpleMessage("Modelo de carro"),
        "car_production_year":
            MessageLookupByLibrary.simpleMessage("Ano de Produção"),
        "cell_number":
            MessageLookupByLibrary.simpleMessage("Número do celular"),
        "certificate_number":
            MessageLookupByLibrary.simpleMessage("Número do certificado"),
        "complaint_submit_success_message": MessageLookupByLibrary.simpleMessage(
            "A reclamação foi enviada. Aguarde um contato de nosso representante de suporte sobre sua consulta."),
        "copyright_notice": m1,
        "dialog_account_deletion_body": MessageLookupByLibrary.simpleMessage(
            "Você tem certeza de que deseja excluir sua conta? Você pode fazer o login novamente dentro de 30 dias para restaurar a conta. Após este período, seus dados serão completamente removidos, incluindo todos os seus créditos restantes."),
        "dialog_account_deletion_title":
            MessageLookupByLibrary.simpleMessage("Exclusão de conta"),
        "distanceAway": m2,
        "distanceFeet": m3,
        "distanceKm": m4,
        "distanceMeters": m5,
        "distanceMiles": m6,
        "driver_register_contact_details_title":
            MessageLookupByLibrary.simpleMessage("Dados de contato"),
        "driver_register_document_first":
            MessageLookupByLibrary.simpleMessage("1-Identidade"),
        "driver_register_document_second":
            MessageLookupByLibrary.simpleMessage("2-Carteira de habilitação"),
        "driver_register_document_third": MessageLookupByLibrary.simpleMessage(
            "3-Documento de propriedade do veículo"),
        "driver_register_profile_submitted_message":
            MessageLookupByLibrary.simpleMessage(
                "Seu perfil foi enviado para aprovação do administrador. Você pode voltar mais tarde para ver o status do seu envio."),
        "driver_register_ride_details_step_title":
            MessageLookupByLibrary.simpleMessage("Detalhes da viagem"),
        "driver_register_step_documents_heading":
            MessageLookupByLibrary.simpleMessage(
                "Para verificar os documentos acima, exigimos os documentos abaixo carregados"),
        "driver_register_step_documents_title":
            MessageLookupByLibrary.simpleMessage("Documentos"),
        "driver_register_step_payout_details_title":
            MessageLookupByLibrary.simpleMessage("Detalhes de pagamento"),
        "driver_register_title":
            MessageLookupByLibrary.simpleMessage("Registro de motorista"),
        "driver_register_verification_code_textfield_hint":
            MessageLookupByLibrary.simpleMessage("Código de verificação"),
        "driver_registration_approved_demo_mode":
            MessageLookupByLibrary.simpleMessage(
                "Normalmente, nesta fase, a administração precisaria aprovar a apresentação do motorista pelo Painel de Administração. No entanto, para fins de demonstração, seu perfil é automaticamente aprovado agora e está pronto para uso."),
        "driver_registration_step_verify_number_title":
            MessageLookupByLibrary.simpleMessage("Verificar número"),
        "earnings_empty_state_body": MessageLookupByLibrary.simpleMessage(
            "Nos critérios definidos acima não encontramos nenhum registro."),
        "email": MessageLookupByLibrary.simpleMessage("E-Mail"),
        "empty_state_title_no_record":
            MessageLookupByLibrary.simpleMessage("Nenhum dado encontrado!"),
        "enum_driver_deduct_transaction_type_commission":
            MessageLookupByLibrary.simpleMessage("Comissão"),
        "enum_driver_deduct_transaction_type_correction":
            MessageLookupByLibrary.simpleMessage("Correção"),
        "enum_driver_deduct_transaction_type_withdraw":
            MessageLookupByLibrary.simpleMessage("Retirar"),
        "enum_driver_recharge_transaction_type_order_fee":
            MessageLookupByLibrary.simpleMessage("Taxa de pedido"),
        "enum_driver_recharge_type_bank_transfer":
            MessageLookupByLibrary.simpleMessage("Transferência bancária"),
        "enum_driver_recharge_type_gift":
            MessageLookupByLibrary.simpleMessage("Presente"),
        "enum_driver_recharge_type_in_app_payment":
            MessageLookupByLibrary.simpleMessage("Pagamento no aplicativo"),
        "enum_unknown": MessageLookupByLibrary.simpleMessage("Desconhecido"),
        "error_cancel_not_allowed": MessageLookupByLibrary.simpleMessage(
            "O cancelamento não é permitido para uma viagem já iniciada"),
        "error_field_cant_be_empty":
            MessageLookupByLibrary.simpleMessage("Não pode ser vazio"),
        "firstname": MessageLookupByLibrary.simpleMessage("Primeiro nome"),
        "form_required_field_error":
            MessageLookupByLibrary.simpleMessage("Campo obrigatório"),
        "gender": MessageLookupByLibrary.simpleMessage("Gênero"),
        "gender_female": MessageLookupByLibrary.simpleMessage("Feminino"),
        "gender_male": MessageLookupByLibrary.simpleMessage("Masculino"),
        "hard_reject_registration": MessageLookupByLibrary.simpleMessage(
            "Seu envio foi totalmente rejeitado!"),
        "incomplete_registration_description":
            MessageLookupByLibrary.simpleMessage(
                "Por favor, complete sua \\nregistration de registro"),
        "invoice_dialog_body": MessageLookupByLibrary.simpleMessage(
            "Você também pode receber dinheiro em vez de pagamento online, se você e o passageiro estiverem em acordo."),
        "invoice_dialog_heading": MessageLookupByLibrary.simpleMessage(
            "Aguardando o pagamento do passageiro"),
        "invoice_dialog_title":
            MessageLookupByLibrary.simpleMessage("Informação de pagamento"),
        "invoice_item_subtotal":
            MessageLookupByLibrary.simpleMessage("Subtotal"),
        "invoice_item_tip": MessageLookupByLibrary.simpleMessage("Dica"),
        "issue_description_placeholder":
            MessageLookupByLibrary.simpleMessage("Descrição"),
        "issue_subject_placeholder":
            MessageLookupByLibrary.simpleMessage("Assunto"),
        "issue_submit_body": MessageLookupByLibrary.simpleMessage(
            "Você pode relatar qualquer problema que teve com o seu passeio, nós o ajudaremos com o problema em uma chamada."),
        "issue_submit_title":
            MessageLookupByLibrary.simpleMessage("Informar um problema"),
        "languageSettings":
            MessageLookupByLibrary.simpleMessage("Language Settings"),
        "lastname": MessageLookupByLibrary.simpleMessage("Sobrenome"),
        "loading": MessageLookupByLibrary.simpleMessage("Carregando"),
        "logout_dialog_body": MessageLookupByLibrary.simpleMessage(
            "Tem certeza de que deseja sair do aplicativo?"),
        "mapSettings": MessageLookupByLibrary.simpleMessage("Map Settings"),
        "menu_about": MessageLookupByLibrary.simpleMessage("Sobre"),
        "menu_announcements": MessageLookupByLibrary.simpleMessage("Anúncios"),
        "menu_earnings": MessageLookupByLibrary.simpleMessage("Ganhos"),
        "menu_logout": MessageLookupByLibrary.simpleMessage("Sair"),
        "menu_profile": MessageLookupByLibrary.simpleMessage("Meu perfil"),
        "menu_trip_history":
            MessageLookupByLibrary.simpleMessage("Histórico de viagem"),
        "menu_wallet": MessageLookupByLibrary.simpleMessage("Carteira"),
        "message_cant_open_url":
            MessageLookupByLibrary.simpleMessage("O comando não é suportado"),
        "message_notification_permission_denined_message":
            MessageLookupByLibrary.simpleMessage(
                "A permissão de notificação foi negada anteriormente. A fim de obter notificações de novos pedidos, você pode habilitar a permissão a partir das configurações do aplicativo."),
        "message_notification_permission_title":
            MessageLookupByLibrary.simpleMessage("Permissão de notificação"),
        "message_unknown_error":
            MessageLookupByLibrary.simpleMessage("Erro desconhecido"),
        "navigation_dialog_title": MessageLookupByLibrary.simpleMessage(
            "Escolha um aplicativo para navegar"),
        "navigation_dialog_title_pickup_point":
            MessageLookupByLibrary.simpleMessage(
                "Navegue até o ponto de coleta"),
        "navigation_title_destination_point":
            MessageLookupByLibrary.simpleMessage(
                "Navegar para o ponto de entrega"),
        "onboarding_welcome":
            MessageLookupByLibrary.simpleMessage("Bem-vindo !"),
        "orderStatusCardTitleMultipleDestinations": m7,
        "order_details_payment_method_title":
            MessageLookupByLibrary.simpleMessage("Forma de pagamento"),
        "order_details_trip_information_title":
            MessageLookupByLibrary.simpleMessage("Informações da viagem"),
        "order_payment_method_cash":
            MessageLookupByLibrary.simpleMessage("Dinheiro"),
        "order_payment_method_online":
            MessageLookupByLibrary.simpleMessage("Online"),
        "order_payment_status_paid":
            MessageLookupByLibrary.simpleMessage("A viagem foi paga"),
        "order_payment_status_unpaid":
            MessageLookupByLibrary.simpleMessage("A viagem ainda não foi paga"),
        "order_status_action_arrived":
            MessageLookupByLibrary.simpleMessage("Chegada"),
        "order_status_action_finished":
            MessageLookupByLibrary.simpleMessage("Terminar"),
        "order_status_action_navigate":
            MessageLookupByLibrary.simpleMessage("Navegar"),
        "order_status_action_received_cash":
            MessageLookupByLibrary.simpleMessage(
                "Pagamento em dinheiro recebido"),
        "order_status_action_start":
            MessageLookupByLibrary.simpleMessage("Iniciar viagem"),
        "order_status_canceled":
            MessageLookupByLibrary.simpleMessage("Cancelado"),
        "order_status_card_title_arrived":
            MessageLookupByLibrary.simpleMessage("O passageiro foi notificado"),
        "order_status_card_title_driver_accepted":
            MessageLookupByLibrary.simpleMessage(
                "O passageiro será notificado assim que você tocar em Chegou"),
        "order_status_card_title_started":
            MessageLookupByLibrary.simpleMessage("Rumo ao destino"),
        "pending_review_registration_description":
            MessageLookupByLibrary.simpleMessage(
                "Seu envio está em análise,\\nThanks Agradecemos a paciência."),
        "phone_number_empty": MessageLookupByLibrary.simpleMessage(
            "Por favor, insira o número de telefone"),
        "plate_number": MessageLookupByLibrary.simpleMessage("Número da placa"),
        "profile_bank_information_title":
            MessageLookupByLibrary.simpleMessage("Informações bancárias"),
        "profile_distance_traveled":
            MessageLookupByLibrary.simpleMessage("Distância percorrida"),
        "profile_rating": MessageLookupByLibrary.simpleMessage("Avaliação"),
        "profile_services_title":
            MessageLookupByLibrary.simpleMessage("Serviços:"),
        "profile_total_trips":
            MessageLookupByLibrary.simpleMessage("Total de viagens"),
        "profile_uploaded_documents_title":
            MessageLookupByLibrary.simpleMessage("Documentos enviados"),
        "profile_vehicle_information_title":
            MessageLookupByLibrary.simpleMessage("Informações do veículo"),
        "register_contact_details_title": MessageLookupByLibrary.simpleMessage(
            "Insira seus detalhes de contato"),
        "register_number_subtitle": MessageLookupByLibrary.simpleMessage(
            "Enviaremos um código para o seu número para continuar o registro"),
        "register_number_title": MessageLookupByLibrary.simpleMessage(
            "Digite seu número de telefone"),
        "register_payout_details_title": MessageLookupByLibrary.simpleMessage(
            "Insira seus detalhes de pagamento"),
        "register_profile_photo_subtitle": MessageLookupByLibrary.simpleMessage(
            "Seu rosto deve ser reconhecível na imagem carregada"),
        "register_profile_photo_title":
            MessageLookupByLibrary.simpleMessage("Carregar foto do perfil"),
        "register_ride_details_title": MessageLookupByLibrary.simpleMessage(
            "Insira os detalhes da sua viagem"),
        "register_step_contact_details":
            MessageLookupByLibrary.simpleMessage("Detalhes de contato"),
        "register_step_payout_details":
            MessageLookupByLibrary.simpleMessage("Detalhes de pagamento"),
        "register_step_phone_number":
            MessageLookupByLibrary.simpleMessage("Número do celular"),
        "register_step_ride_details":
            MessageLookupByLibrary.simpleMessage("Detalhes da viagem"),
        "register_step_upload_documents":
            MessageLookupByLibrary.simpleMessage("Carregar Documentos"),
        "register_step_verify_number":
            MessageLookupByLibrary.simpleMessage("Número de verificação"),
        "register_upload_documents_subtitle": MessageLookupByLibrary.simpleMessage(
            "Para verificar sua identidade e cumprir os regulamentos, precisamos que você envie os documentos abaixo: \n1-Identificação com foto\n2-Carteira de motorista\n3-Documento de propriedade do veículo"),
        "register_upload_documents_title": MessageLookupByLibrary.simpleMessage(
            "Carregar documentos necessários"),
        "register_verify_code_subtitle": m8,
        "register_verify_code_title":
            MessageLookupByLibrary.simpleMessage("Digite o código"),
        "ride_preferences_title":
            MessageLookupByLibrary.simpleMessage("Preferências de viagem"),
        "rider_expected_time_future": m9,
        "rider_expected_time_past": m10,
        "rider_options_dialog_title":
            MessageLookupByLibrary.simpleMessage("Opções de viagem"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "soft_rejection_description":
            MessageLookupByLibrary.simpleMessage("Há um problema com o envio"),
        "statusOffline": MessageLookupByLibrary.simpleMessage("Fique online"),
        "statusOnline": MessageLookupByLibrary.simpleMessage("Desconecte"),
        "status_offline_description": MessageLookupByLibrary.simpleMessage(
            "Fique online para ver os pedidos"),
        "status_online_description":
            MessageLookupByLibrary.simpleMessage("Procurando viagem"),
        "terms_and_condition_first_part":
            MessageLookupByLibrary.simpleMessage("Eu li e concordo com "),
        "terms_and_conditions_clickable_part":
            MessageLookupByLibrary.simpleMessage("Termos e Condições"),
        "title_important": MessageLookupByLibrary.simpleMessage("IMPORTANTE!"),
        "title_logout": MessageLookupByLibrary.simpleMessage("Sair"),
        "title_success": MessageLookupByLibrary.simpleMessage("Sucesso"),
        "top_up_sheet_pay_button":
            MessageLookupByLibrary.simpleMessage("Pagar"),
        "trip_history_empty_state": MessageLookupByLibrary.simpleMessage(
            "Nenhum pedido anterior foi registrado."),
        "wallet_activities_heading":
            MessageLookupByLibrary.simpleMessage("Atividades"),
        "wallet_card_title": m11,
        "wallet_empty_state_message":
            MessageLookupByLibrary.simpleMessage("Nenhum histórico registrado.")
      };
}
