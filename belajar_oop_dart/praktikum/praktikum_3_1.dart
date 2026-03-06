// Mixin untuk validasi Form
mixin FormValidator {
  bool isEmailValid(String email) => email.contains("@");
  bool isPasswordStrong(String pass) => pass.length >= 8;
}

// Controller menggabungkan logika dan meminjam fitur dari Mixin
class LoginController with FormValidator {
  void submitLogin(String email, String password) {
    if (isEmailValid(email) && isPasswordStrong(password)) {
      print("Validasi sukses! Memanggil API Login...");
    } else {
      print("Validasi gagal! Periksa format email/password.");
    }
  }
}

void main() {
  var controller = LoginController();
  controller.submitLogin("admin_m ail.com", "1234"); // Gagal (tidak ada @)
  controller.submitLogin("admin@mail.com", "passwordKuat"); // Sukses
}