import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:guidly/models/item.dart';

class Firestore {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<List<ItemModel>> getItems() async {
    var doc = await firestore.collection('items').get();
    var items = doc.docs.map((doc) => ItemModel.fromJson(doc.data())).toList();
    // print(items);
    return items;
  }

// Here you should add function as the above one it will take id and pass
// it to the function you will get the result as ItemModel type
// you can search in a browser for firestore to see example ad how to use
// this function inside the buying section
}
