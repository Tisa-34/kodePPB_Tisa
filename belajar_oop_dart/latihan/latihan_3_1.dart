mixin CurrencyFormatter {
  String formatToIDR(int amount) {
    return "Rp $amount";
  }

}

class ProductDetailScreen with CurrencyFormatter {
  void showPrice(int price) => print("Harga Produk: ${formatToIDR(price)}");

  }


void main() {
  var screen = ProductDetailScreen();
  screen.showPrice(25000);
}