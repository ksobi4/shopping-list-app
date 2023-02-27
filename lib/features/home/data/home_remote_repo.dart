import 'package:shopping_list/utils/auth.dart';
import 'package:shopping_list/utils/database.dart';

import '../../../utils/logger.dart';
import '../../auth/model/user.dart';
import '../model/list.dart';

class HomeRemoteRepo {
  Future<List<Catalog>> getCatalogs() async {
    var snap = await db.collection('users').doc(getUserId()).get();

    var jsonData = snap.data() as Map<String, dynamic>;

    User user = User.fromJson(jsonData);

    List<Catalog> outputList;

    for (var catalogId in user.catalogsIdList) {
      var snap = await db.collection('catalogs').doc(catalogId).get();
      var jsonData = snap.data();

      logger.i('output: $jsonData');
    }

    return [];
  }
}
