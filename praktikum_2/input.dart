import 'dart:io';

void main() {
  // Input Nama
  print("Masukan Nama Anda : ");
  String? nama = stdin.readLineSync();
  
  print(nama!);
}