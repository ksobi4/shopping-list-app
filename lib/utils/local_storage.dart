import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shopping_list/core/consts.dart';
import 'package:shopping_list/features/home/model/item.dart';
import 'package:shopping_list/features/home/model/items_list.dart';

Box hiveBox = Hive.box(HiveConsts.HIVE_BOX);

Future<void> initLocalStorage() async {
  final appDocumentDir = await getApplicationDocumentsDirectory();
  Hive.init(appDocumentDir.path);

  Hive.registerAdapter(ItemAdapter());
  Hive.registerAdapter(ItemsListAdapter());

  await Hive.openBox(HiveConsts.HIVE_BOX);
}
