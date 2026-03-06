class ProductCard {
  final String productName;
  final String price;

  // Named constructor dengan required.
  const ProductCard({required this.productName, required this.price});

  void build() => print("Membangun Card: '$productName' (Rp $price)");
}

void main() {
  // Pembuatan objek menggunakan const
  const card1 = ProductCard(productName: "Mouse Wireless", price: "150000.0");
  const card2 = ProductCard(productName: "Mouse Wireless", price: "150000.0");

  card1.build();

  // Membuktikan efisiensi memori: avatar1 dan avatar2 menunjuk ke 1 lokasi memori yang sama
  print("Card 1 dan Card 2 di memori yang sama? ${identical(card1, card2)}");
}