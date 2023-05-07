import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:guidly/models/item.dart';

class Firestore {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  // Future<List<ItemModel>> getItems() async {
  //   var doc = await firestore.collection('items').get();
  //   var items = doc.docs.map((doc) => ItemModel.fromJson(doc.data())).toList();
  // }
}
