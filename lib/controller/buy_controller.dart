import 'package:get/get.dart';
import 'package:guidly/services/fierstore.dart';

import '../models/item.dart';

class BuyController extends GetxController {
  List<ItemModel> items = [];
  final Firestore _firestore = new Firestore();

  Future<void> getItems() async {
    items = await _firestore.getItems();
    print(items);
  }

  @override
  void onInit() {
    // TODO: implement onInit
    getItems();
    super.onInit();
  }
}
