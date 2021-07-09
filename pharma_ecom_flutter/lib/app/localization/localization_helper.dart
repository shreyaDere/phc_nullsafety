import 'package:get/get.dart';
import 'localizations.dart';

String getTranslatedValues(String key) {
  return DemoLocalizations.of(Get.context).getTranslatedValue(key);
  //AppTranslations.of(Get.context).getTranslatedValue(key);
}
