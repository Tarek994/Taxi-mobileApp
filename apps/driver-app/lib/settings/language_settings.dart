import 'package:client_shared/components/back_button.dart';
import 'package:client_shared/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_gen/gen_l10n/messages.dart';

class LanguageSettings extends StatefulWidget {
  static const Map<String, String> languages = {
    "en": "English",
    "es": "español",
    "fr": "Français",
    "de": "Deutsch",
    "pt": "Português",
    "it": "Italiano",
    "sv": "Svenska",
    "hi": "हिन्दी",
    "id": "bahasa Indonesia",
    "hy": "հայերեն",
    "zh": "中文",
    "ar": "عربى",
    "ro": "română",
    "ja": "日本",
    "ko": "한국어",
    "ru": "русский",
    "fa": "فارسی",
    "ur": "اردو",
    "bn": "বাংলা",
    "am": "Amharic"
  };
  const LanguageSettings({Key? key}) : super(key: key);

  @override
  State<LanguageSettings> createState() => _LanguageSettingsState();
}

class _LanguageSettingsState extends State<LanguageSettings> {
  String selectedLanguageCode = "en";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: RidyBackButton(text: S.of(context).action_back),
        ),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            S.of(context).languageSettings,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
        Expanded(
          child: ValueListenableBuilder<Box>(
              valueListenable:
                  Hive.box('settings').listenable(keys: ['language']),
              builder: (context, box, widget) {
                selectedLanguageCode = box.get('language', defaultValue: 'en');
                return Padding(
                  padding: const EdgeInsets.all(16),
                  child: ListView.builder(
                      itemCount: LanguageSettings.languages.length,
                      itemBuilder: (context, index) {
                        return AnimatedContainer(
                          duration: const Duration(milliseconds: 250),
                          margin: const EdgeInsets.symmetric(vertical: 4),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: LanguageSettings.languages.keys
                                              .elementAt(index) ==
                                          selectedLanguageCode
                                      ? CustomTheme.primaryColors.shade400
                                      : CustomTheme.neutralColors.shade200,
                                  width: 1.5),
                              color: CustomTheme.neutralColors.shade200,
                              borderRadius: BorderRadius.circular(8)),
                          child: Row(children: [
                            Radio<String>(
                                visualDensity: VisualDensity.compact,
                                value: LanguageSettings.languages.keys
                                    .elementAt(index),
                                groupValue: selectedLanguageCode,
                                onChanged: (value) {
                                  if (value != null) {
                                    setState(() {
                                      selectedLanguageCode = value;
                                    });
                                    Hive.box('settings').put('language', value);
                                  }
                                }),
                            Text(
                                LanguageSettings.languages.values
                                    .elementAt(index),
                                style: Theme.of(context).textTheme.titleMedium)
                          ]),
                        );
                      }),
                );
              }),
        )
      ],
    );
  }
}
