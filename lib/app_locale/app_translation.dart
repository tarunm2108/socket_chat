import 'package:socket_chat/app_locale/locale_string/en.dart';
import 'package:socket_chat/app_locale/locale_string/es.dart';

abstract class AppTranslation {
  static Map<String, Map<String, String>> translationsKeys = {
    "en": en,
    "es": es,
  };
}
