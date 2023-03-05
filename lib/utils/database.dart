import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shopping_list/core/config/firebase_options.dart';
import 'package:shopping_list/features/home/model/item.dart';
import 'package:shopping_list/features/home/model/items_list.dart';
import 'package:shopping_list/utils/logger.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

Future<void> initFirebase() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  if (FirebaseAuth.instance.currentUser == null) {
    await FirebaseAuth.instance.signInAnonymously();

    // await addFirstItemsListToDB();
  }
}

String getUserId() {
  return FirebaseAuth.instance.currentUser!.uid;
}

Future<void> addFirstItemsListToDB() async {
  String userId = getUserId();

  // logger.i(itemsList.toJson());

  DocumentReference doc =
      await db.collection('itemsList').add({"name": "Lista zakupów"});

  doc.collection('items').add(
      const Item(name: 'pomidor', category: 'warzywa', amount: 2, unit: 'units')
          .toJson());

  db.collection('users').doc(userId).set({
    "catalogsIdList": FieldValue.arrayUnion([doc.id]),
    "nickname": 'user${userId.substring(0, 8)}',
  });
}
