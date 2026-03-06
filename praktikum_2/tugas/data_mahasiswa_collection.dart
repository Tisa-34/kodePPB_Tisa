void main() {
  List<Map<String, dynamic>> dataMahasiswa = [
    {
      'nim': '09030015',
      'nama': 'Udin',
      'mataKuliah': ['PW', 'PBO', 'PPB'],
    },
    {
      'nim': '09030016',
      'nama': 'Joko',
      'mataKuliah': ['BASDAT', 'RPL'],
    },
  ];


  tampilkanDataMahasiswa(dataMahasiswa);
}

void tampilkanDataMahasiswa(
  List<Map<String, dynamic>> dataMahasiswa,
) {
  print('=== DATA MAHASISWA ===\n');

  for (int i = 0; i < dataMahasiswa.length; i++) {
    var mahasiswa = dataMahasiswa[i];

    print('Mahasiswa ke-${i + 1}');
    print('NIM  : ${mahasiswa['nim']}');
    print('Nama : ${mahasiswa['nama']}');

    print('Mata Kuliah:');
    List<String> mataKuliah =
        List<String>.from(mahasiswa['mataKuliah']);

    for (int j = 0; j < mataKuliah.length; j++) {
      print('  ${j + 1}. ${mataKuliah[j]}');
    }

    print('');
  }
}
