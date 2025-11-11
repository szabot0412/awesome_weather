// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hungarian (`hu`).
class AppLocalizationsHu extends AppLocalizations {
  AppLocalizationsHu([String locale = 'hu']) : super(locale);

  @override
  String get app_name => 'Awesome Weather';

  @override
  String get cloud_cover => 'Felhőzet';

  @override
  String get rain => 'Eső';

  @override
  String get wind => 'Szélsebesség';

  @override
  String get no_data => 'Nincs adat';

  @override
  String location(Object lat, Object long) {
    return 'Szél: $lat, Hossz: $long';
  }
}
