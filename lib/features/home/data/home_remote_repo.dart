import 'package:flutter/foundation.dart';
import 'package:shopping_list/features/home/model/catalog.dart';
import 'package:shopping_list/utils/auth.dart';
import 'package:shopping_list/utils/database.dart';

import '../../../utils/logger.dart';
import '../../auth/model/user.dart';
import '../model/item.dart';

class HomeRemoteRepo {
  Future<List<Catalog>> getCatalogs() async {
    String userID = getUserId();
    var snap = await db.collection('users').doc(userID).get();

    var jsonData = snap.data() as Map<String, dynamic>;

    User user = User.fromJson(jsonData);

    List<Catalog> outputList = [];

    for (var catalogId in user.catalogsIdList) {
      var snap = await db.collection('catalogs').doc(catalogId).get();
      var jsonData = snap.data() as Map<String, dynamic>;

      String name = jsonData['name'];

      var snap1 = await db
          .collection('catalogs')
          .doc(catalogId)
          .collection('items')
          .get();

      List<Item> itemList = [];
      for (var el in snap1.docs) {
        itemList.add(Item.fromJson(el.data()));
      }

      logger.i('name: $name');
      outputList.add(Catalog(name: name, items: itemList));
    }

    return outputList;
  }
}
