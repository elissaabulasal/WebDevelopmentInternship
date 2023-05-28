//Items that user could by from each place
class ItemModel {
  final String name;
  final String itemID;
  final num price;
  final String currency;
  final String imageUrl;
  final String desc;

  ItemModel({
    required this.name,
    required this.itemID,
    required this.price,
    required this.currency,
    required this.imageUrl,
    required this.desc,
  });

  factory ItemModel.fromJson(Map json) {
    return ItemModel(
        name: json['name'],
        itemID: json['itemID'],
        price: json['price'],
        currency: json['currency'],
        imageUrl: json['imageUrl'],
        desc: json['desc']);
  }
}
