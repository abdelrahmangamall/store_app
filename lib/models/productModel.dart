class productModel {
  final String title, description,category , image;
  final dynamic price;
  final num id;
  final ratingModel rating;
  productModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.category,
      required this.image,
      required this.rating});

  factory productModel.fromJson(jsonData) {
    return productModel(

      id: jsonData['id'],
      title: jsonData['title'],
      price: jsonData['price'],
      description: jsonData['description'],
      category: jsonData['category'],
      image: jsonData['image'],
      rating: ratingModel.fromJson(jsonData['rating']),
    );
  }
}

class ratingModel {
  final num count;
  final num rate;

  ratingModel({required this.count, required this.rate});

  factory ratingModel.fromJson(jsonData) {
    return ratingModel(count: jsonData['count'], rate: jsonData['rate']);
  }
}
