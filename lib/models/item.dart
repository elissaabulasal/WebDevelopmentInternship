//Items that user could by from each place
class ItemModel {
  final String name;
  final String itemID;
  final double price;
  final String currency;

  ItemModel(
      {required this.name,
      required this.itemID,
      required this.price,
      required this.currency});

  factory ItemModel.fromJson(Map json) {
    return ItemModel(
      name: json['name'],
      itemID: json['itemID'],
      price: json['price'],
      currency: json['currency'],
    );
  }
}
