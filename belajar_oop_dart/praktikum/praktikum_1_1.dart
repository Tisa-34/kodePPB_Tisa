// Simulasi pembuatan Custom Widget di Flutter
class PrimaryButton {
  String? text;
  String? color;

  // Method ini mensimulasikan proses build/render di layar
  void render() {
    print("Merender tombol bertuliskan '$text' dengan warna $color.");
  }
}

void main() {
  // Menggunakan komponen yang sudah dibuat
  var loginBtn = PrimaryButton();
  loginBtn.text = "Login";
  loginBtn.color = "Biru";
  loginBtn.render();
}