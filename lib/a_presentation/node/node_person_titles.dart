import 'package:asl/a_presentation/a_shared/constants.dart';

/// Honorific titles selectable in the personal info panel (Arabic).
const List<String> kMalePersonTitles = [
  'الخليفة',
  'الأمير',
  'النبي',
  'الإمام',
];

const List<String> kFemalePersonTitles = [
  'الأميرة',
  'أم المؤمنين',
];

List<String> personTitlesForGender(Gender g) =>
    g == Gender.male ? kMalePersonTitles : kFemalePersonTitles;

/// Clears [current] when it is not allowed for [gender].
String? normalizePersonTitleForGender(String? current, Gender gender) {
  if (current == null || current.trim().isEmpty) return null;
  final t = current.trim();
  return personTitlesForGender(gender).contains(t) ? t : null;
}
