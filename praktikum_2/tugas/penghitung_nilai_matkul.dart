import 'dart:io';

class PenghitungMatkul {
  String namaMataKuliah;
  double nilaiUts;
  double nilaiUas;
  double nilaiTugas;

  PenghitungMatkul({
    required this.namaMataKuliah,
    required this.nilaiUts,
    required this.nilaiUas,
    required this.nilaiTugas,
  });


  double hitungTotalNilai() {
    return (nilaiUts + nilaiUas + nilaiTugas) / 3;
  }

  void tampilkanHasil() {
    double totalNilai = hitungTotalNilai();

    print('\n=== HASIL PERHITUNGAN ===');
    print('Nama Mata Kuliah : $namaMataKuliah');
    print('Total Nilai      : ${totalNilai.toStringAsFixed(2)}');
  }
}

void main() {
  stdout.write('Masukkan Nama Mata Kuliah : ');
  String namaMatkul = stdin.readLineSync() ?? '';

  stdout.write('Masukkan Nilai UTS : ');
  double nilaiUts = double.parse(stdin.readLineSync() ?? '0');

  stdout.write('Masukkan Nilai UAS : ');
  double nilaiUas = double.parse(stdin.readLineSync() ?? '0');


  stdout.write('Masukkan Nilai Tugas : ');
  double nilaiTugas = double.parse(stdin.readLineSync() ?? '0');


  PenghitungMatkul penghitung = PenghitungMatkul(
    namaMataKuliah: namaMatkul,
    nilaiUts: nilaiUts,
    nilaiUas: nilaiUas,
    nilaiTugas: nilaiTugas,
  );

  penghitung.tampilkanHasil();
}
