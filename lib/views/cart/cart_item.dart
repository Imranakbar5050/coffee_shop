class CartItem {
  final String imagePath;
  final String name;
  final String description;
  final String size;
  final double price;
  int quantity;

  CartItem({
    required this.imagePath,
    required this.name,
    required this.description,
    required this.size,
    required this.price,
    this.quantity = 1,
  });
}
