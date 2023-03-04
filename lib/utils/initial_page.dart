import 'package:hive/hive.dart';
import 'package:shopping_list/core/consts.dart';
import 'package:shopping_list/core/go%20router/router_consts.dart';
import 'package:shopping_list/utils/local_storage.dart';

String getInitialPage() {
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
