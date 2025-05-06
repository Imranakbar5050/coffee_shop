import 'cart_item.dart';

class CartManager {
  static final CartManager _instance = CartManager._internal();
  factory CartManager() => _instance;
  CartManager._internal();

  final List<CartItem> _items = [];

  // 🔄 Return the internal list directly to allow updates/removal
  List<CartItem> get items => _items;

  void addItem(CartItem newItem) {
    final index = _items.indexWhere((item) =>
    item.name == newItem.name && item.size == newItem.size);
    if (index != -1) {
      _items[index].quantity += newItem.quantity;
    } else {
      _items.add(newItem);
    }
  }

  void clear() => _items.clear();

  double get totalPrice =>
      _items.fold(0, (sum, item) => sum + (item.price * item.quantity));
}
