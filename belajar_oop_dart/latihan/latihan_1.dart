class Kotak {
  int tinggi;
  int lebar;

  Kotak({required this.tinggi, required this.lebar});

  int hitungLuas(){
    return tinggi*lebar;
  }

  void hasilLuas() => print('Nilai tinggi $tinggi di kali nilai $lebar maka hasilnya ${hitungLuas()}');

}
void main() {

  Kotak kotakLuas = Kotak(tinggi: 10, lebar: 5);
  kotakLuas.hasilLuas();
}







