import 'package:hive/hive.dart';
import 'package:shopping_list/core/consts.dart';
import 'package:shopping_list/core/go%20router/consts.dart';

String getInitialPage() {
  var hiveBox = Hive.box(Consts.HIVE_BOX);

  var selectedLang = hiveBox.get(HiveConsts.selectedLang);

  var introducePath = hiveBox.get(HiveConsts.introductionPath);

  if (selectedLang == null) {
    return SELECT_LANG_R;
  } else {
    if (introducePath == null) {
      return INTRODUCTION_PATH_R;
    } else {
      return HOME_R;
    }
  }
}
