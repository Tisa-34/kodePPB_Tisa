// Simulasi pembuatan Custom Widget di Flutter
class CustomText {
  String? content;
  double? fontSize;

  // Method ini mensimulasikan proses build/render di layar
  void render() {
    print("Menampilkan teks  '$content' dengan warna $fontSize.");
  }
}

void main() {
  // Menggunakan komponen yang sudah dibuat
  var loginBtn = CustomText();
  loginBtn.content = "Hallo Flutter";
  loginBtn.fontSize = 16.5;
  loginBtn.render();
}