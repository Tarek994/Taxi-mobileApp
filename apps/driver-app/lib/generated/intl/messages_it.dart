// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a it locale. All the
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
  String get localeName => 'it';

  static String m0(destinationIndex) =>
      "Arrived to ${destinationIndex}st destination";

  static String m1(company) =>
      "Diritti d\'autore © ${company}, tutti i diritti riservati.";

  static String m2(distance) => "${distance} away";

  static String m3(distance) => "${distance} ft";

  static String m4(distance) => "${distance} km";

  static String m5(distance) => "${distance} m";

  static String m6(distance) => "${distance} mi";

  static String m7(destinationIndex) =>
      "Heading to ${destinationIndex}st destination";

  static String m8(number) => "Abbiamo inviato un codice a ${number}";

  static String m9(minutes) => "Il passeggero ti aspetta tra ${minutes} minuti";

  static String m10(minutes) =>
      "Il passeggero ti aspettava da ${minutes} minuti";

  static String m11(appName) => "Portafoglio ${appName}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "account_number":
            MessageLookupByLibrary.simpleMessage("Numero di conto"),
        "actionArrivedToDestination": m0,
        "action_add_photo":
            MessageLookupByLibrary.simpleMessage("Aggiungi foto"),
        "action_back": MessageLookupByLibrary.simpleMessage("Indietro"),
        "action_cancel": MessageLookupByLibrary.simpleMessage("Annulla"),
        "action_cancel_ride":
            MessageLookupByLibrary.simpleMessage("Annulla il viaggio"),
        "action_complete_registration":
            MessageLookupByLibrary.simpleMessage("Completa la registrazione"),
        "action_confirm_and_continue":
            MessageLookupByLibrary.simpleMessage("Conferma e continua"),
        "action_continue": MessageLookupByLibrary.simpleMessage("Continua"),
        "action_delete_account":
            MessageLookupByLibrary.simpleMessage("Elimina Account"),
        "action_edit_submission":
            MessageLookupByLibrary.simpleMessage("Modifica la presentazione"),
        "action_login_signup":
            MessageLookupByLibrary.simpleMessage("Accedi / Registrati"),
        "action_ok": MessageLookupByLibrary.simpleMessage("OK"),
        "action_ride_options":
            MessageLookupByLibrary.simpleMessage("Opzioni del viaggio"),
        "action_ride_preferences":
            MessageLookupByLibrary.simpleMessage("Preferenze del passeggero"),
        "action_upload_document":
            MessageLookupByLibrary.simpleMessage("Carica Documento"),
        "add_credit_dialog_choose_amount":
            MessageLookupByLibrary.simpleMessage("Scegli l\'importo"),
        "add_credit_dialog_select_payment_method":
            MessageLookupByLibrary.simpleMessage(
                "Seleziona metodo di pagamento:"),
        "add_credit_dialog_title":
            MessageLookupByLibrary.simpleMessage("Aggiungi Credito"),
        "address": MessageLookupByLibrary.simpleMessage("Indirizzo"),
        "announcements_empty_state_body": MessageLookupByLibrary.simpleMessage(
            "Ti avviseremo quando arriveranno nuovi annunci."),
        "announcements_empty_state_title":
            MessageLookupByLibrary.simpleMessage("Nessun annuncio ancora!"),
        "available_order_action_accept":
            MessageLookupByLibrary.simpleMessage("Accetta Ordine"),
        "bankRoutingNumber":
            MessageLookupByLibrary.simpleMessage("Numero di routing bancario"),
        "bank_name": MessageLookupByLibrary.simpleMessage("Nome della banca"),
        "bank_swift": MessageLookupByLibrary.simpleMessage("Codice swift"),
        "button_report_issue":
            MessageLookupByLibrary.simpleMessage("Segnala un Problema"),
        "car_color": MessageLookupByLibrary.simpleMessage("Colore dell\'auto"),
        "car_model": MessageLookupByLibrary.simpleMessage("Modello dell\'auto"),
        "car_production_year": MessageLookupByLibrary.simpleMessage(
            "Anno di produzione dell\'auto"),
        "cell_number":
            MessageLookupByLibrary.simpleMessage("Numero di cellulare"),
        "certificate_number":
            MessageLookupByLibrary.simpleMessage("Numero certificato"),
        "complaint_submit_success_message": MessageLookupByLibrary.simpleMessage(
            "La segnalazione è stata inviata. Attendere il contatto di un rappresentante del nostro servizio di assistenza in merito alla richiesta."),
        "copyright_notice": m1,
        "dialog_account_deletion_body": MessageLookupByLibrary.simpleMessage(
            "Sei sicuro di voler eliminare il tuo account? Puoi accedere nuovamente entro 30 giorni per ripristinare l\'account. Dopo questo periodo, i tuoi dati verranno completamente rimossi, compresi tutti i crediti rimanenti."),
        "dialog_account_deletion_title":
            MessageLookupByLibrary.simpleMessage("Eliminazione Account"),
        "distanceAway": m2,
        "distanceFeet": m3,
        "distanceKm": m4,
        "distanceMeters": m5,
        "distanceMiles": m6,
        "driver_register_contact_details_title":
            MessageLookupByLibrary.simpleMessage("Dettagli di contatto"),
        "driver_register_document_first":
            MessageLookupByLibrary.simpleMessage("1 - Carta d\'Identità"),
        "driver_register_document_second":
            MessageLookupByLibrary.simpleMessage("2 - Patente di Guida"),
        "driver_register_document_third": MessageLookupByLibrary.simpleMessage(
            "3 - Registrazione del veicolo"),
        "driver_register_profile_submitted_message":
            MessageLookupByLibrary.simpleMessage(
                "Il tuo profilo è stato inviato per l\'approvazione dell\'amministratore. Puoi controllare più tardi lo stato della tua richiesta."),
        "driver_register_ride_details_step_title":
            MessageLookupByLibrary.simpleMessage("Dettagli corsa"),
        "driver_register_step_documents_heading":
            MessageLookupByLibrary.simpleMessage(
                "Per verificare i documenti sopra elencati, richiediamo l\'upload dei seguenti documenti:"),
        "driver_register_step_documents_title":
            MessageLookupByLibrary.simpleMessage("Carica documenti"),
        "driver_register_step_payout_details_title":
            MessageLookupByLibrary.simpleMessage("Dettagli di pagamento"),
        "driver_register_title":
            MessageLookupByLibrary.simpleMessage("Registrazione Autista"),
        "driver_register_verification_code_textfield_hint":
            MessageLookupByLibrary.simpleMessage("Codice di verifica"),
        "driver_registration_approved_demo_mode":
            MessageLookupByLibrary.simpleMessage(
                "Normalmente, in questa fase l\'amministratore dovrebbe approvare la richiesta del conducente dal pannello di amministrazione. Tuttavia, per il bene della demo, il tuo profilo è stato automaticamente approvato ora ed è pronto per l\'uso."),
        "driver_registration_step_verify_number_title":
            MessageLookupByLibrary.simpleMessage("Verifica numero"),
        "earnings_empty_state_body": MessageLookupByLibrary.simpleMessage(
            "Ai criteri sopra indicati, non possiamo trovare alcun record."),
        "email": MessageLookupByLibrary.simpleMessage("E-Mail"),
        "empty_state_title_no_record":
            MessageLookupByLibrary.simpleMessage("Nessun dato trovato!"),
        "enum_driver_deduct_transaction_type_commission":
            MessageLookupByLibrary.simpleMessage("Commissione"),
        "enum_driver_deduct_transaction_type_correction":
            MessageLookupByLibrary.simpleMessage("Correzione"),
        "enum_driver_deduct_transaction_type_withdraw":
            MessageLookupByLibrary.simpleMessage("Prelievo"),
        "enum_driver_recharge_transaction_type_order_fee":
            MessageLookupByLibrary.simpleMessage("Tariffa d\'Ordine"),
        "enum_driver_recharge_type_bank_transfer":
            MessageLookupByLibrary.simpleMessage("Bonifico Bancario"),
        "enum_driver_recharge_type_gift":
            MessageLookupByLibrary.simpleMessage("Buono Regalo"),
        "enum_driver_recharge_type_in_app_payment":
            MessageLookupByLibrary.simpleMessage("Pagamento In-App"),
        "enum_unknown": MessageLookupByLibrary.simpleMessage("Sconosciuto"),
        "error_cancel_not_allowed": MessageLookupByLibrary.simpleMessage(
            "L\'annullamento non è consentito per un viaggio già avviato."),
        "error_field_cant_be_empty": MessageLookupByLibrary.simpleMessage(
            "Il campo non può essere vuoto"),
        "firstname": MessageLookupByLibrary.simpleMessage("Nome"),
        "form_required_field_error":
            MessageLookupByLibrary.simpleMessage("Campo Obbligatorio"),
        "gender": MessageLookupByLibrary.simpleMessage("Genere"),
        "gender_female": MessageLookupByLibrary.simpleMessage("Femmina"),
        "gender_male": MessageLookupByLibrary.simpleMessage("Maschio"),
        "hard_reject_registration": MessageLookupByLibrary.simpleMessage(
            "La tua presentazione è stata completamente rifiutata!"),
        "incomplete_registration_description":
            MessageLookupByLibrary.simpleMessage(
                "Per favore completa la \n presentazione della tua registrazione"),
        "invoice_dialog_body": MessageLookupByLibrary.simpleMessage(
            "Puoi anche ricevere il pagamento in contanti invece che online se tu e il passeggero siete d\'accordo."),
        "invoice_dialog_heading": MessageLookupByLibrary.simpleMessage(
            "In attesa del pagamento del passeggero"),
        "invoice_dialog_title":
            MessageLookupByLibrary.simpleMessage("Informazioni di pagamento"),
        "invoice_item_subtotal":
            MessageLookupByLibrary.simpleMessage("Subtotale"),
        "invoice_item_tip": MessageLookupByLibrary.simpleMessage("Mancia"),
        "issue_description_placeholder":
            MessageLookupByLibrary.simpleMessage("Descrizione"),
        "issue_subject_placeholder":
            MessageLookupByLibrary.simpleMessage("Oggetto"),
        "issue_submit_body": MessageLookupByLibrary.simpleMessage(
            "Puoi segnalare qualsiasi problema avuto con il tuo viaggio. Ti aiuteremo con la questione entro una chiamata."),
        "issue_submit_title":
            MessageLookupByLibrary.simpleMessage("Segnala un Problema"),
        "languageSettings":
            MessageLookupByLibrary.simpleMessage("Language Settings"),
        "lastname": MessageLookupByLibrary.simpleMessage("Cognome"),
        "loading": MessageLookupByLibrary.simpleMessage("CARICAMENTO"),
        "logout_dialog_body": MessageLookupByLibrary.simpleMessage(
            "Sei sicuro di voler uscire dall\'applicazione?"),
        "mapSettings": MessageLookupByLibrary.simpleMessage("Map Settings"),
        "menu_about": MessageLookupByLibrary.simpleMessage("Informazioni"),
        "menu_announcements":
            MessageLookupByLibrary.simpleMessage("Comunicazioni"),
        "menu_earnings": MessageLookupByLibrary.simpleMessage("Guadagni"),
        "menu_logout": MessageLookupByLibrary.simpleMessage("Logout"),
        "menu_profile": MessageLookupByLibrary.simpleMessage("Il mio profilo"),
        "menu_trip_history":
            MessageLookupByLibrary.simpleMessage("Cronologia viaggi"),
        "menu_wallet": MessageLookupByLibrary.simpleMessage("Portafoglio"),
        "message_cant_open_url":
            MessageLookupByLibrary.simpleMessage("Comando non supportato"),
        "message_notification_permission_denined_message":
            MessageLookupByLibrary.simpleMessage(
                "Il permesso di notifica è stato negato in precedenza. Per ricevere le nuove notifiche di ordine, è possibile abilitare il permesso dalle impostazioni dell\'app."),
        "message_notification_permission_title":
            MessageLookupByLibrary.simpleMessage("Permesso di notifica"),
        "message_unknown_error":
            MessageLookupByLibrary.simpleMessage("Errore sconosciuto"),
        "navigation_dialog_title": MessageLookupByLibrary.simpleMessage(
            "Scegli un\'app per la navigazione"),
        "navigation_dialog_title_pickup_point":
            MessageLookupByLibrary.simpleMessage("Naviga al punto di ritiro"),
        "navigation_title_destination_point":
            MessageLookupByLibrary.simpleMessage("Naviga alla destinazione"),
        "onboarding_welcome":
            MessageLookupByLibrary.simpleMessage("Benvenuto!"),
        "orderStatusCardTitleMultipleDestinations": m7,
        "order_details_payment_method_title":
            MessageLookupByLibrary.simpleMessage("Metodo di pagamento"),
        "order_details_trip_information_title":
            MessageLookupByLibrary.simpleMessage("Informazioni sul viaggio"),
        "order_payment_method_cash":
            MessageLookupByLibrary.simpleMessage("Contanti"),
        "order_payment_method_online":
            MessageLookupByLibrary.simpleMessage("Online"),
        "order_payment_status_paid":
            MessageLookupByLibrary.simpleMessage("Il viaggio è stato pagato"),
        "order_payment_status_unpaid": MessageLookupByLibrary.simpleMessage(
            "Il viaggio non è stato ancora pagato"),
        "order_status_action_arrived":
            MessageLookupByLibrary.simpleMessage("Arrivato"),
        "order_status_action_finished":
            MessageLookupByLibrary.simpleMessage("Termina"),
        "order_status_action_navigate":
            MessageLookupByLibrary.simpleMessage("Naviga"),
        "order_status_action_received_cash":
            MessageLookupByLibrary.simpleMessage(
                "Pagamento in contanti ricevuto"),
        "order_status_action_start":
            MessageLookupByLibrary.simpleMessage("Inizia il Viaggio"),
        "order_status_canceled":
            MessageLookupByLibrary.simpleMessage("Annullato"),
        "order_status_card_title_arrived": MessageLookupByLibrary.simpleMessage(
            "Il passeggero è stato informato"),
        "order_status_card_title_driver_accepted":
            MessageLookupByLibrary.simpleMessage(
                "Il passeggero verrà informato una volta che avrai premuto Arrivato"),
        "order_status_card_title_started":
            MessageLookupByLibrary.simpleMessage("Direzione destinazione"),
        "pending_review_registration_description":
            MessageLookupByLibrary.simpleMessage(
                "La tua presentazione è in fase di revisione, \n Grazie per la pazienza."),
        "phone_number_empty": MessageLookupByLibrary.simpleMessage(
            "Inserisci il numero di telefono"),
        "plate_number": MessageLookupByLibrary.simpleMessage("Numero targa"),
        "profile_bank_information_title":
            MessageLookupByLibrary.simpleMessage("Informazioni bancarie"),
        "profile_distance_traveled":
            MessageLookupByLibrary.simpleMessage("Distanza percorsa"),
        "profile_rating": MessageLookupByLibrary.simpleMessage("Valutazione"),
        "profile_services_title":
            MessageLookupByLibrary.simpleMessage("Servizi:"),
        "profile_total_trips":
            MessageLookupByLibrary.simpleMessage("Totale viaggi"),
        "profile_uploaded_documents_title":
            MessageLookupByLibrary.simpleMessage("Documenti caricati"),
        "profile_vehicle_information_title":
            MessageLookupByLibrary.simpleMessage("Informazioni sul veicolo"),
        "register_contact_details_title": MessageLookupByLibrary.simpleMessage(
            "Inserisci i tuoi dettagli di contatto"),
        "register_number_subtitle": MessageLookupByLibrary.simpleMessage(
            "Ti invieremo un codice al tuo numero per continuare la registrazione"),
        "register_number_title": MessageLookupByLibrary.simpleMessage(
            "Inserisci il tuo numero di telefono"),
        "register_payout_details_title": MessageLookupByLibrary.simpleMessage(
            "Inserisci i tuoi dettagli di pagamento"),
        "register_profile_photo_subtitle": MessageLookupByLibrary.simpleMessage(
            "Il tuo volto dovrebbe essere riconoscibile nell\'immagine caricata"),
        "register_profile_photo_title":
            MessageLookupByLibrary.simpleMessage("Carica una foto del profilo"),
        "register_ride_details_title": MessageLookupByLibrary.simpleMessage(
            "Inserisci i dettagli del tuo viaggio"),
        "register_step_contact_details":
            MessageLookupByLibrary.simpleMessage("Dettagli di contatto"),
        "register_step_payout_details":
            MessageLookupByLibrary.simpleMessage("Dettagli di pagamento"),
        "register_step_phone_number":
            MessageLookupByLibrary.simpleMessage("Numero di telefono"),
        "register_step_ride_details":
            MessageLookupByLibrary.simpleMessage("Dettagli del viaggio"),
        "register_step_upload_documents":
            MessageLookupByLibrary.simpleMessage("Carica i documenti"),
        "register_step_verify_number":
            MessageLookupByLibrary.simpleMessage("Verifica il Numero"),
        "register_upload_documents_subtitle": MessageLookupByLibrary.simpleMessage(
            "Per verificare la tua identità e rispettare le normative, dovrai caricare i seguenti documenti: \n1-Documento d\'identità\n2-Patente di guida\n3-Documento di proprietà del veicolo"),
        "register_upload_documents_title": MessageLookupByLibrary.simpleMessage(
            "Carica i documenti richiesti"),
        "register_verify_code_subtitle": m8,
        "register_verify_code_title":
            MessageLookupByLibrary.simpleMessage("Inserisci il codice"),
        "ride_preferences_title":
            MessageLookupByLibrary.simpleMessage("Preferenze di viaggio"),
        "rider_expected_time_future": m9,
        "rider_expected_time_past": m10,
        "rider_options_dialog_title":
            MessageLookupByLibrary.simpleMessage("Opzioni del viaggio"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "soft_rejection_description": MessageLookupByLibrary.simpleMessage(
            "C\'è un problema con la presentazione"),
        "statusOffline": MessageLookupByLibrary.simpleMessage("Disponibile"),
        "statusOnline": MessageLookupByLibrary.simpleMessage("Non disponibile"),
        "status_offline_description": MessageLookupByLibrary.simpleMessage(
            "Entra online per vedere le richieste"),
        "status_online_description":
            MessageLookupByLibrary.simpleMessage("In ricerca di un viaggio"),
        "terms_and_condition_first_part":
            MessageLookupByLibrary.simpleMessage("Ho letto e accetto i "),
        "terms_and_conditions_clickable_part":
            MessageLookupByLibrary.simpleMessage("Termini e condizioni"),
        "title_important": MessageLookupByLibrary.simpleMessage("IMPORTANTE!"),
        "title_logout": MessageLookupByLibrary.simpleMessage("Logout"),
        "title_success": MessageLookupByLibrary.simpleMessage("Successo"),
        "top_up_sheet_pay_button": MessageLookupByLibrary.simpleMessage("Paga"),
        "trip_history_empty_state": MessageLookupByLibrary.simpleMessage(
            "Nessun ordine passato è stato registrato."),
        "wallet_activities_heading":
            MessageLookupByLibrary.simpleMessage("Attività"),
        "wallet_card_title": m11,
        "wallet_empty_state_message":
            MessageLookupByLibrary.simpleMessage("Nessuna attività registrata.")
      };
}
