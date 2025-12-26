import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/a_presentation/core/app.dart';
import 'package:asl/localization/lang/language.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:flutter/material.dart';

class LanguageSettingsSection extends StatelessWidget {
  const LanguageSettingsSection(
      {super.key, required this.dialogContext, required this.contextPage});
  final BuildContext dialogContext;
  final BuildContext contextPage;

  @override
  Widget build(BuildContext context) {
    void changeLanguage(String languageCode) {
      final temp = Locale(languageCode);
      // to add it to shared preference
      setLocale(languageCode);
      MyApp.setLocale(context, temp);
    }

    final local = Localizations.localeOf(context);
    return Row(
      children: [
        Text(
          getTr(context, 'choose_display_language')!,
          style: kBodyMedium.copyWith(color: kBlacksColor[200]),
        ),
        const Spacer(),
        SizedBox(
          width: 200,
          height: 30,
          child: DropdownButton(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
            items: Language.languageList
                .map((lang) => DropdownMenuItem<String>(
                      value: lang.languageCode,
                      child: Text(
                        lang.name,
                        style:
                            kFootnoteStyle.copyWith(color: kBlacksColor[200]),
                      ),
                    ))
                .toList(),
            isExpanded: true,
            value: local.languageCode,
            onChanged: (String? value) => changeLanguage(value ?? arabic),
            underline: const SizedBox(),
            icon: const Icon(Icons.expand_more_rounded),
            dropdownColor: kWhitesColor[600],
            style: kBodyMedium,
            elevation: 1,
          ),
        ),
      ],
    );
  }
}
