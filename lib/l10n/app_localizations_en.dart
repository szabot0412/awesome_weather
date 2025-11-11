// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get app_name => 'Awesome Weather';

  @override
  String get cloud_cover => 'Clouds';

  @override
  String get rain => 'Rain';

  @override
  String get wind => 'Wind speed';

  @override
  String get no_data => 'No data';

  @override
  String location(Object lat, Object long) {
    return 'Lat: $lat, Lng: $long';
  }
}
