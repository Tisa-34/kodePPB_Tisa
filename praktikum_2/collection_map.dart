void main() {
  // deklarasi Map cara 1
  var mahasiswa = <int, String>{
    1: "Saad",
    2: "Tisa"
  };
  print(mahasiswa[1]);

  // deklarasi Map cara 2
  Map nilai = {'Akzy': 89, 'Azky': 90};
  print(nilai);

  // deklarasi Map cara 3
  var mataKuliah = {1: "PBO", 2: "PPB"};
  print(mataKuliah[2]);

  // deklarasi Map cara 4
  var email = new Map();
  email[1] = "saad@gmail.com";
  email[2] = "tisa@gmail.com";
  print(email);
}