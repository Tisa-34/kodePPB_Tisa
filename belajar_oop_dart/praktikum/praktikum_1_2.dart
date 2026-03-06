class UserAvatar {
  final String imageUrl;
  final double size;

  // Named constructor dengan required.
  const UserAvatar({required this.imageUrl, required this.size});

  void build() => print("Memuat avatar dari '$imageUrl' (Ukuran: $size)");
}

void main() {
  // Pembuatan objek menggunakan const
  const avatar1 = UserAvatar(imageUrl: "profile_1.png", size: 40.0);
  const avatar2 = UserAvatar(imageUrl: "profile_1.png", size: 40.0);

  avatar1.build();

  // Membuktikan efisiensi memori: avatar1 dan avatar2 menunjuk ke 1 lokasi memori yang sama
  print("Apakah avatar1 identik dengan avatar2? ${identical(avatar1, avatar2)}");
}
