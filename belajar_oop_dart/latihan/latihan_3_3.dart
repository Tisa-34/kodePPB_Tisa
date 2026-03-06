class ValidationException implements Exception {
  final String message;
  ValidationException(this.message);
}

void saveProfile(String name) {
  if (name.isEmpty) {
    throw ValidationException("Nama tidak boleh kosong");
  }

  print("Profil berhasil disimpan");
}

void main() {
  try {
    saveProfile("");
  } on ValidationException catch (e) {
    print("UI: Munculkan pesan error  -> ${e.message}");
  } finally {
    print("UI: Selesai memproses aksi simpan.");
  }
}