abstract class StatelessWidget {
  String build();
  void tampilkanKeLayar() => print("Membangun UI: ${build()}");

}

class HalamanProfil extends StatelessWidget {
  final String namaUser;
  HalamanProfil({required this.namaUser});

  @override
  String build() {
    return "Halaman Profil Untuk User: $namaUser";
  }

}

void main(){
  var myApp = HalamanProfil(namaUser: 'Tisa Midori');
  myApp.tampilkanKeLayar();
}