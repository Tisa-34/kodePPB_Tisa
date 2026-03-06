// Membuat vaiabel tipe data enumerasi
enum Status {disetujui, ditolak, diperbaiki, ditinjau}

void main() {
  // Membuat variel dengan tipe data String, int, double, bool
  String nama = "Tisa";
  int umur = 19;
  double tinggi = 180.43;
  bool isLulus = true;

  // Membuat alamat variabel dengan kata kunci var
  var alamat = "Indramayu, Jawa Barat, Indonesia";

  // Mencetak variabel
  print("Nama Saya $nama. Umur saya $umur tahun" );
  print("Tinggi badan saya sekitar $tinggi cm");
  print("Saat ini Saya tinggal di $alamat");
  print("Status proposal Tugas saya saat ini adalah $Status.disetujui");
  print("Kelulusan saya tahun ini diharapkan" + isLulus.toString());
}

