import 'package:shopping_list/core/consts.dart';
import 'package:shopping_list/core/error/failures.dart';
import 'package:shopping_list/features/home/model/items_list.dart';
import 'package:shopping_list/utils/local_storage.dart';

class ItemsListLocalRepo {
  Future<List<ItemsList>> getItemsList() async {
    try {
      final data = hiveBox.get(HiveConsts.itemsList);
      return data;
    } catch (e) {
      throw CacheFailure(e.toString());
    }
  }

  Future<void> cacheItemsList(List<ItemsList> data) async {
    hiveBox.put(HiveConsts.itemsList, data);
  }
}
