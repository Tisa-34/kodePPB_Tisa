// Custom Exception khusus untuk masalah Jaringan/Network
class NetworkException implements Exception {
  final String message;
  NetworkException(this.message);
}

class UserRepository {
  void fetchUsers(bool hasInternetConnection) {
    try {
      print("Memulai request ke server...");
      if (!hasInternetConnection) {
        throw NetworkException("Koneksi internet terputus (Timeout)."); // Memicu error
      }
      print("Berhasil mengunduh data User.");
    } catch (e) {
      print("Error tertangkap di Repository! Melempar ke UI...");
rethrow; // Melempar error ke UI (pemanggil)
}
}
}
void main() {
var repo = UserRepository();
// Blok UI untuk menangani tampilannya
try {
repo.fetchUsers(false); // Simulasi koneksi mati
} on NetworkException catch (e) {
  // Tampilkan Snackbar/Dialog di Flutter nanti
print("UI: Tampilkan Alert -> ${e.message}");
} catch (e) {
print("UI: Error tidak dikenali -> $e");
} finally {
// Hide Loading Indicator
print("UI: Sembunyikan icon loading (CircularProgressIndicator).");
}
}
