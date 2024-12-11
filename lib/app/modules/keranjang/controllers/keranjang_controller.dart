import 'package:get/get.dart';

class KeranjangController extends GetxController {
  // Daftar produk di keranjang
  var cartItems = [
    CartItem(title: "Hot Redvelvet", price: 20000, quantity: 1),
    CartItem(title: "Coffee Aren", price: 17000, quantity: 1),
    CartItem(title: "Tahu Crisbby", price: 15000, quantity: 1),
  ].obs;

  // Menghitung total harga dan pajak
  int get totalPrice {
    return cartItems.fold(0, (sum, item) => sum + item.price * item.quantity);
  }

  double get tax {
    return totalPrice * 0.02;
  }

  double get totalWithTax {
    return totalPrice + tax;
  }

  // Menambah jumlah item di keranjang
  void increaseQuantity(int index) {
    cartItems[index].quantity++;
  }

  // Mengurangi jumlah item di keranjang
  void decreaseQuantity(int index) {
    if (cartItems[index].quantity > 1) {
      cartItems[index].quantity--;
    }
  }
}

// Model untuk item keranjang
class CartItem {
  String title;
  int price;
  int quantity;

  CartItem({
    required this.title,
    required this.price,
    required this.quantity,
  });
}
