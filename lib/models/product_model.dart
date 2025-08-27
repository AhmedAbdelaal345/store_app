class ProductModel {
  dynamic id;
  String title;
  double price;
  String description;
  String category;
  String image;
  RatingModel rate;
  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rate,
  });
  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
      id: jsonData["id"],
      title: jsonData["title"],
      price: jsonData["price"].toDouble(),
      description: jsonData["description"],
      category: jsonData["category"],
      image: jsonData["image"],
      rate: RatingModel.fromJson(jsonData["rating"]),
    );
  }
}

class RatingModel {
  final double rate;
  final int count;
  RatingModel({required this.rate, required this.count});
  factory RatingModel.fromJson(jsonData) {
    return RatingModel(rate: jsonData["rate"].toDouble(), count: jsonData["count"]);
  }
}
