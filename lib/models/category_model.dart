// class CategoryModel {
//   int id;
//   String title;
//   double price;
//   String description;
//   String category;
//   String image;
//   RatingModel rate;
//   CategoryModel({
//     required this.id,
//     required this.title,
//     required this.price,
//     required this.description,
//     required this.category,
//     required this.image,
//     required this.rate,
//   });
//   factory CategoryModel.fromJson(jsonData) {
//     return CategoryModel(
//       id: jsonData["id"],
//       title: jsonData["title"],
//       price: jsonData["price"],
//       description: jsonData["description"],
//       category: jsonData["category"],
//       image: jsonData["image"],
//       rate: RatingModel.fromJson(jsonData["rating"]),
//     );
//   }
// }

// class RatingModel {
//   final double rate;
//   final int count;
//   RatingModel({required this.rate, required this.count});
//   factory RatingModel.fromJson(jsonData) {
//     return RatingModel(rate: jsonData["rate"], count: jsonData["count"]);
//   }
// }
