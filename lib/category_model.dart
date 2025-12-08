class CategoryModel {
  final String image;
  final String name;
  CategoryModel({required this.name, required this.image});
}

class ProductModel {
  final String image;
  final String name;
  final double price;
  final double rate;
  final double ratecount;
  ProductModel({
    required this.name,
    required this.image,
    required this.price,
    required this.rate,
    required this.ratecount,
  });
}
