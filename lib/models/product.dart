class Product {
  final String id;
  final String title;
  final List<String> categories;
  final String description;
  final double price;
  final String imageUrl;

  const Product({
    required this.id,
    required this.title,
    required this.categories,
    required this.description,
    required this.price,
    required this.imageUrl,
  });
}
