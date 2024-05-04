// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a fr locale. All the
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
  String get localeName => 'fr';

  static String m0(destinationIndex) =>
      "Arrived to ${destinationIndex}st destination";

  static String m1(company) => "Copyright © ${company}, Tous droits réservés.";

  static String m2(distance) => "${distance} away";

  static String m3(distance) => "${distance} ft";

  static String m4(distance) => "${distance} km";

  static String m5(distance) => "${distance} m";

  static String m6(distance) => "${distance} mi";

  static String m7(destinationIndex) =>
      "Heading to ${destinationIndex}st destination";

  static String m8(number) => "Nous avons envoyé un code à ${number}";

  static String m9(minutes) => "Le passager vous attend dans ${minutes}";

  static String m10(minutes) => "Le passager vous attendait il y a ${minutes}";

  static String m11(appName) => "Portefeuille ${appName}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "account_number":
            MessageLookupByLibrary.simpleMessage("Numéro de compte"),
        "actionArrivedToDestination": m0,
        "action_add_photo":
            MessageLookupByLibrary.simpleMessage("Ajouter une photo"),
        "action_back": MessageLookupByLibrary.simpleMessage("Retour"),
        "action_cancel": MessageLookupByLibrary.simpleMessage("Annuler"),
        "action_cancel_ride":
            MessageLookupByLibrary.simpleMessage("Annuler le trajet"),
        "action_complete_registration":
            MessageLookupByLibrary.simpleMessage("Enregistrement complet"),
        "action_confirm_and_continue":
            MessageLookupByLibrary.simpleMessage("Confirmer et continuer"),
        "action_continue": MessageLookupByLibrary.simpleMessage("Continuer"),
        "action_delete_account":
            MessageLookupByLibrary.simpleMessage("Supprimer le compte"),
        "action_edit_submission":
            MessageLookupByLibrary.simpleMessage("Modifier la soumission"),
        "action_login_signup":
            MessageLookupByLibrary.simpleMessage("Se connecter S\'inscrire"),
        "action_ok": MessageLookupByLibrary.simpleMessage("D\'ACCORD"),
        "action_ride_options":
            MessageLookupByLibrary.simpleMessage("Options de trajet"),
        "action_ride_preferences":
            MessageLookupByLibrary.simpleMessage("Préférences du pilote"),
        "action_upload_document":
            MessageLookupByLibrary.simpleMessage("Télécharger un document"),
        "add_credit_dialog_choose_amount":
            MessageLookupByLibrary.simpleMessage("Choisissez le montant"),
        "add_credit_dialog_select_payment_method":
            MessageLookupByLibrary.simpleMessage(
                "Sélectionnez le mode de paiement:"),
        "add_credit_dialog_title":
            MessageLookupByLibrary.simpleMessage("Ajouter un crédit"),
        "address": MessageLookupByLibrary.simpleMessage("Adresse"),
        "announcements_empty_state_body": MessageLookupByLibrary.simpleMessage(
            "Nous vous informerons lorsque de nouvelles annonces arriveront."),
        "announcements_empty_state_title":
            MessageLookupByLibrary.simpleMessage("Pas encore d\'annonces !"),
        "available_order_action_accept":
            MessageLookupByLibrary.simpleMessage("Accepter la commande"),
        "bankRoutingNumber": MessageLookupByLibrary.simpleMessage(
            "Numéro d\'acheminement bancaire"),
        "bank_name": MessageLookupByLibrary.simpleMessage("Nom de banque"),
        "bank_swift": MessageLookupByLibrary.simpleMessage("Banque Swift"),
        "button_report_issue":
            MessageLookupByLibrary.simpleMessage("Signaler un problème"),
        "car_color":
            MessageLookupByLibrary.simpleMessage("Couleur de la voiture"),
        "car_model": MessageLookupByLibrary.simpleMessage("Modèle de voiture"),
        "car_production_year":
            MessageLookupByLibrary.simpleMessage("Année de production"),
        "cell_number":
            MessageLookupByLibrary.simpleMessage("Numéro de téléphone"),
        "certificate_number":
            MessageLookupByLibrary.simpleMessage("Numéro de certificat"),
        "complaint_submit_success_message": MessageLookupByLibrary.simpleMessage(
            "La plainte est déposée. Veuillez attendre un contact de notre représentant du support au sujet de votre demande."),
        "copyright_notice": m1,
        "dialog_account_deletion_body": MessageLookupByLibrary.simpleMessage(
            "Êtes-vous sûr de vouloir supprimer votre compte ? Vous pouvez vous reconnecter dans les 30 jours pour restaurer le compte. Après cette période, vos données sont complètement supprimées, y compris tous vos crédits restants."),
        "dialog_account_deletion_title":
            MessageLookupByLibrary.simpleMessage("Suppression de compte"),
        "distanceAway": m2,
        "distanceFeet": m3,
        "distanceKm": m4,
        "distanceMeters": m5,
        "distanceMiles": m6,
        "driver_register_contact_details_title":
            MessageLookupByLibrary.simpleMessage("Détails du contact"),
        "driver_register_document_first":
            MessageLookupByLibrary.simpleMessage("1-ID"),
        "driver_register_document_second":
            MessageLookupByLibrary.simpleMessage("Permis 2 conducteurs"),
        "driver_register_document_third": MessageLookupByLibrary.simpleMessage(
            "Document de propriété de 3-Ride"),
        "driver_register_profile_submitted_message":
            MessageLookupByLibrary.simpleMessage(
                "Votre profil est soumis à l\'approbation de l\'administrateur. Vous pouvez revenir plus tard pour voir l\'état de votre soumission."),
        "driver_register_ride_details_step_title":
            MessageLookupByLibrary.simpleMessage("Détails du trajet"),
        "driver_register_step_documents_heading":
            MessageLookupByLibrary.simpleMessage(
                "Afin de vérifier les documents ci-dessus, nous avons besoin des documents ci-dessous en cours de téléchargement"),
        "driver_register_step_documents_title":
            MessageLookupByLibrary.simpleMessage("Documents"),
        "driver_register_step_payout_details_title":
            MessageLookupByLibrary.simpleMessage("Détails du paiement"),
        "driver_register_title": MessageLookupByLibrary.simpleMessage(
            "Enregistrement du conducteur"),
        "driver_register_verification_code_textfield_hint":
            MessageLookupByLibrary.simpleMessage("Le code de vérification"),
        "driver_registration_approved_demo_mode":
            MessageLookupByLibrary.simpleMessage(
                "Normalement, à ce stade, l\'administrateur doit approuver la soumission du conducteur à partir du panneau d\'administration. Cependant, pour les besoins de la démo, votre profil est automatiquement approuvé maintenant et est prêt à être utilisé."),
        "driver_registration_step_verify_number_title":
            MessageLookupByLibrary.simpleMessage("Vérifier le numéro"),
        "earnings_empty_state_body": MessageLookupByLibrary.simpleMessage(
            "Aux critères définis ci-dessus, nous ne pouvons trouver aucun enregistrement."),
        "email": MessageLookupByLibrary.simpleMessage("E-mail"),
        "empty_state_title_no_record":
            MessageLookupByLibrary.simpleMessage("Aucune donnée disponible!"),
        "enum_driver_deduct_transaction_type_commission":
            MessageLookupByLibrary.simpleMessage("Commission"),
        "enum_driver_deduct_transaction_type_correction":
            MessageLookupByLibrary.simpleMessage("Correction"),
        "enum_driver_deduct_transaction_type_withdraw":
            MessageLookupByLibrary.simpleMessage("Se désister"),
        "enum_driver_recharge_transaction_type_order_fee":
            MessageLookupByLibrary.simpleMessage("Frais de commande"),
        "enum_driver_recharge_type_bank_transfer":
            MessageLookupByLibrary.simpleMessage("Virement"),
        "enum_driver_recharge_type_gift":
            MessageLookupByLibrary.simpleMessage("Cadeau"),
        "enum_driver_recharge_type_in_app_payment":
            MessageLookupByLibrary.simpleMessage(
                "Paiement intégré à l\'application"),
        "enum_unknown": MessageLookupByLibrary.simpleMessage("Inconnu"),
        "error_cancel_not_allowed": MessageLookupByLibrary.simpleMessage(
            "Cancel is not allowed for an already started trip"),
        "error_field_cant_be_empty":
            MessageLookupByLibrary.simpleMessage("Ne peux pas être vide"),
        "firstname": MessageLookupByLibrary.simpleMessage("Prénom"),
        "form_required_field_error":
            MessageLookupByLibrary.simpleMessage("champs requis"),
        "gender": MessageLookupByLibrary.simpleMessage("Le genre"),
        "gender_female": MessageLookupByLibrary.simpleMessage("Femelle"),
        "gender_male": MessageLookupByLibrary.simpleMessage("Homme"),
        "hard_reject_registration": MessageLookupByLibrary.simpleMessage(
            "Votre soumission est entièrement rejetée !"),
        "incomplete_registration_description":
            MessageLookupByLibrary.simpleMessage(
                "Veuillez compléter votre\n soumission d\'inscription"),
        "invoice_dialog_body": MessageLookupByLibrary.simpleMessage(
            "Vous pouvez également recevoir de l\'argent au lieu d\'un paiement en ligne si vous et l\'auteur êtes tous les deux disposés à le faire."),
        "invoice_dialog_heading": MessageLookupByLibrary.simpleMessage(
            "En attente du paiement du passager"),
        "invoice_dialog_title":
            MessageLookupByLibrary.simpleMessage("Information de paiement"),
        "invoice_item_subtotal": MessageLookupByLibrary.simpleMessage("Total"),
        "invoice_item_tip": MessageLookupByLibrary.simpleMessage("Pointe"),
        "issue_description_placeholder":
            MessageLookupByLibrary.simpleMessage("La description"),
        "issue_subject_placeholder":
            MessageLookupByLibrary.simpleMessage("Matière"),
        "issue_submit_body": MessageLookupByLibrary.simpleMessage(
            "Vous pouvez signaler tout problème rencontré avec votre trajet. Nous vous aiderons à résoudre le problème dans le cadre d\'un appel."),
        "issue_submit_title":
            MessageLookupByLibrary.simpleMessage("Signaler un problème"),
        "languageSettings":
            MessageLookupByLibrary.simpleMessage("Language Settings"),
        "lastname": MessageLookupByLibrary.simpleMessage("Nom de famille"),
        "loading": MessageLookupByLibrary.simpleMessage("CHARGEMENT EN COURS"),
        "logout_dialog_body": MessageLookupByLibrary.simpleMessage(
            "Voulez-vous vraiment vous déconnecter de l\'application ?"),
        "mapSettings": MessageLookupByLibrary.simpleMessage("Map Settings"),
        "menu_about": MessageLookupByLibrary.simpleMessage("À propos de"),
        "menu_announcements": MessageLookupByLibrary.simpleMessage("Annonces"),
        "menu_earnings": MessageLookupByLibrary.simpleMessage("Gains"),
        "menu_logout": MessageLookupByLibrary.simpleMessage("Se déconnecter"),
        "menu_profile": MessageLookupByLibrary.simpleMessage("Mon profil"),
        "menu_trip_history":
            MessageLookupByLibrary.simpleMessage("Historique des trajets"),
        "menu_wallet": MessageLookupByLibrary.simpleMessage("Porte monnaie"),
        "message_cant_open_url": MessageLookupByLibrary.simpleMessage(
            "La commande n\'est pas prise en charge"),
        "message_notification_permission_denined_message":
            MessageLookupByLibrary.simpleMessage(
                "L\'autorisation de notification a été refusée précédemment. Afin d\'obtenir de nouvelles notifications de commande, vous pouvez activer l\'autorisation à partir des paramètres de l\'application."),
        "message_notification_permission_title":
            MessageLookupByLibrary.simpleMessage(
                "Autorisation de notification"),
        "message_unknown_error":
            MessageLookupByLibrary.simpleMessage("Erreur inconnue"),
        "navigation_dialog_title": MessageLookupByLibrary.simpleMessage(
            "Choisissez une application avec laquelle naviguer"),
        "navigation_dialog_title_pickup_point":
            MessageLookupByLibrary.simpleMessage(
                "Accédez au point de ramassage"),
        "navigation_title_destination_point":
            MessageLookupByLibrary.simpleMessage(
                "Naviguer jusqu\'au point de dépôt"),
        "onboarding_welcome":
            MessageLookupByLibrary.simpleMessage("Accueillir !"),
        "orderStatusCardTitleMultipleDestinations": m7,
        "order_details_payment_method_title":
            MessageLookupByLibrary.simpleMessage("Mode de paiement"),
        "order_details_trip_information_title":
            MessageLookupByLibrary.simpleMessage("Informations sur le voyage"),
        "order_payment_method_cash":
            MessageLookupByLibrary.simpleMessage("En espèces"),
        "order_payment_method_online":
            MessageLookupByLibrary.simpleMessage("En ligne"),
        "order_payment_status_paid":
            MessageLookupByLibrary.simpleMessage("Le passager a été payé"),
        "order_payment_status_unpaid": MessageLookupByLibrary.simpleMessage(
            "Le trajet n\'a pas encore été payé"),
        "order_status_action_arrived":
            MessageLookupByLibrary.simpleMessage("Arrivé"),
        "order_status_action_finished":
            MessageLookupByLibrary.simpleMessage("Finir"),
        "order_status_action_navigate":
            MessageLookupByLibrary.simpleMessage("Naviguer"),
        "order_status_action_received_cash":
            MessageLookupByLibrary.simpleMessage("Paiement en espèces reçu"),
        "order_status_action_start":
            MessageLookupByLibrary.simpleMessage("Commencer le voyage"),
        "order_status_canceled": MessageLookupByLibrary.simpleMessage("Annulé"),
        "order_status_card_title_arrived":
            MessageLookupByLibrary.simpleMessage("Le coureur a été informé"),
        "order_status_card_title_driver_accepted":
            MessageLookupByLibrary.simpleMessage(
                "Le passager sera informé une fois que vous aurez appuyé sur Arrivé"),
        "order_status_card_title_started": MessageLookupByLibrary.simpleMessage(
            "En route vers la destination"),
        "pending_review_registration_description":
            MessageLookupByLibrary.simpleMessage(
                "Votre soumission est en cours d\'examen,\n Merci de votre patience."),
        "phone_number_empty": MessageLookupByLibrary.simpleMessage(
            "Veuillez entrer le numéro de téléphone"),
        "plate_number":
            MessageLookupByLibrary.simpleMessage("Numéro de la plaque"),
        "profile_bank_information_title":
            MessageLookupByLibrary.simpleMessage("Informations bancaires"),
        "profile_distance_traveled":
            MessageLookupByLibrary.simpleMessage("Distance parcourue"),
        "profile_rating": MessageLookupByLibrary.simpleMessage("Évaluation"),
        "profile_services_title":
            MessageLookupByLibrary.simpleMessage("Prestations de service:"),
        "profile_total_trips":
            MessageLookupByLibrary.simpleMessage("Nombre total de trajets"),
        "profile_uploaded_documents_title":
            MessageLookupByLibrary.simpleMessage("Documents téléchargés"),
        "profile_vehicle_information_title":
            MessageLookupByLibrary.simpleMessage(
                "Informations sur le véhicule"),
        "register_contact_details_title":
            MessageLookupByLibrary.simpleMessage("Entrez vos coordonnées"),
        "register_number_subtitle": MessageLookupByLibrary.simpleMessage(
            "Nous enverrons un code à votre numéro pour continuer l\'enregistrement"),
        "register_number_title": MessageLookupByLibrary.simpleMessage(
            "Entrez votre numéro de téléphone"),
        "register_payout_details_title": MessageLookupByLibrary.simpleMessage(
            "Entrez vos détails de paiement"),
        "register_profile_photo_subtitle": MessageLookupByLibrary.simpleMessage(
            "Votre visage doit être reconnaissable dans l\'image téléchargée"),
        "register_profile_photo_title": MessageLookupByLibrary.simpleMessage(
            "Télécharger une photo de profil"),
        "register_ride_details_title": MessageLookupByLibrary.simpleMessage(
            "Entrez les détails de votre course"),
        "register_step_contact_details":
            MessageLookupByLibrary.simpleMessage("Détails du contact"),
        "register_step_payout_details":
            MessageLookupByLibrary.simpleMessage("Détails du paiement"),
        "register_step_phone_number":
            MessageLookupByLibrary.simpleMessage("Numéro de téléphone"),
        "register_step_ride_details":
            MessageLookupByLibrary.simpleMessage("Détails du trajet"),
        "register_step_upload_documents":
            MessageLookupByLibrary.simpleMessage("Télécharger des documents"),
        "register_step_verify_number":
            MessageLookupByLibrary.simpleMessage("Vérifier le numéro"),
        "register_upload_documents_subtitle": MessageLookupByLibrary.simpleMessage(
            "Afin de vérifier votre identité et de vous conformer à la réglementation, nous aurons besoin que vous téléchargiez les documents ci-dessous : \\n1-Photo d\'identité\\n2-Permis de conduire\\n3-Document de propriété du trajet"),
        "register_upload_documents_title": MessageLookupByLibrary.simpleMessage(
            "Télécharger les documents requis"),
        "register_verify_code_subtitle": m8,
        "register_verify_code_title":
            MessageLookupByLibrary.simpleMessage("Entrez le code"),
        "ride_preferences_title":
            MessageLookupByLibrary.simpleMessage("Préférences de conduite"),
        "rider_expected_time_future": m9,
        "rider_expected_time_past": m10,
        "rider_options_dialog_title":
            MessageLookupByLibrary.simpleMessage("Options de trajet"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "soft_rejection_description": MessageLookupByLibrary.simpleMessage(
            "Il y a un problème avec la soumission"),
        "statusOffline": MessageLookupByLibrary.simpleMessage("Aller en ligne"),
        "statusOnline": MessageLookupByLibrary.simpleMessage("Se déconnecter"),
        "status_offline_description": MessageLookupByLibrary.simpleMessage(
            "Connectez-vous pour voir les demandes"),
        "status_online_description":
            MessageLookupByLibrary.simpleMessage("Recherche de course"),
        "terms_and_condition_first_part": MessageLookupByLibrary.simpleMessage(
            "J\'ai lu et suis d\'accord avec"),
        "terms_and_conditions_clickable_part":
            MessageLookupByLibrary.simpleMessage("termes et conditions"),
        "title_important": MessageLookupByLibrary.simpleMessage("IMPORTANT!"),
        "title_logout": MessageLookupByLibrary.simpleMessage("Se déconnecter"),
        "title_success": MessageLookupByLibrary.simpleMessage("Succès"),
        "top_up_sheet_pay_button":
            MessageLookupByLibrary.simpleMessage("Payer"),
        "trip_history_empty_state": MessageLookupByLibrary.simpleMessage(
            "Aucune commande passée n\'a été enregistrée."),
        "wallet_activities_heading":
            MessageLookupByLibrary.simpleMessage("Activités"),
        "wallet_card_title": m11,
        "wallet_empty_state_message":
            MessageLookupByLibrary.simpleMessage("Aucun historique enregistré.")
      };
}
