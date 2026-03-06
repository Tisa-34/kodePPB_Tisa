// 1. Abstract Class (Diturunkan dengan 'extends')
// Bisa berisi method yang memiliki body dan method abstract (tanpa body).
abstract class BaseService {
  // Method biasa (bisa langsung di panggil oleh child)
  void logActivity(String message) {
    print("[LOG SERVICE]: $message");
  }

  // Abstract method (wajib di-override)
  void fetchApiData();
}

// 2. Interface (Diimplementasikan dengan 'implements')
// Memaksa class ini HANYA sebagai kontrak, tidak boleh ada fungsi bawaan di dalamnya.
abstract interface class Syncable {
  void syncToLocal();
}

// 3. Implementasi Keduanya
// Mengambil sifat dasar dari BaseService dan mematuhi kontrak dari Syncable
class UserDataService extends BaseService implements Syncable {
  @override
  void fetchApiData() {
    logActivity("Menghubungi endpoint /users...");
    print("Data pengguna berhasil diunduh.");
  }

  @override
void syncToLocal() {
print("Menyimpan data pengguna ke database SQLite lokal...");
}
}
void main() {
var userService = UserDataService();
userService.fetchApiData(); // Memanggil logika dari Abstract Class
userService.syncToLocal();  // Memanggil logika dari Interface
}

