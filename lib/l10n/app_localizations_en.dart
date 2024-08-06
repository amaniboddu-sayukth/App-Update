import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get new_update_available => 'New Update is available';

  @override
  String get critical_update_description => 'The current version of this\napplication is no longer supported.\nWe regret the inconvenience.';

  @override
  String get update_btn_text => 'Update now';

  @override
  String get critical_recommended_text => 'No thanks, close the application';

  @override
  String get optional_update_description => 'A new version is available,\nplease upgrade to get new features.\nIt typically takes less than a minute.';

  @override
  String get optional_recommended_text => 'Remind me later';
}
