import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:shopping_list/core/error/failures.dart';
import 'package:shopping_list/features/home/model/items_list.dart';
import 'package:shopping_list/utils/auth.dart';
import 'package:shopping_list/utils/database.dart';

import '../../../utils/logger.dart';
import '../../auth/model/user.dart';
import '../model/item.dart';

class ItemsListRemoteRepo {
  ItemsListRemoteRepo();

  Future<Either<Failure, List<ItemsList>>> getItemsList() async {
    try {
      String userID = getUserId();
      var snap = await db.collection('users').doc(userID).get();

      var jsonData = snap.data() as Map<String, dynamic>;

      User user = User.fromJson(jsonData);

      List<ItemsList> outputList = [];

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
        outputList.add(ItemsList(name: name, items: itemList));
      }

      return Right(outputList);
    } catch (e) {
      return Left(FirebaseFailure(e.toString()));
    }
  }
}
