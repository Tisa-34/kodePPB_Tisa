class Tombol {
  String label;
  String warnaTombol;

  Tombol({required this.label, this.warnaTombol = 'Biru'});

  void klik() => print('Tombol $label warna $warnaTombol diklik!');

}

void main(){
  var tombolMasuk = Tombol(label: 'Login');
  tombolMasuk.klik();
}