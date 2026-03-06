abstract class StatelessWidget {
  String build();

  void tampilkanKeLayar() => print("Membangun UI: ${build()}");
}

class HalamanPembayaran extends StatelessWidget {
  final int totalTransaksi;

  HalamanPembayaran({required this.totalTransaksi});

  @override
  String build() {
    return "Halaman Pembayaran\nTotal transaksi Rp. 120.000,00";
  }
}

void main() {
  var halaman = HalamanPembayaran(totalTransaksi: 120000);
  halaman.tampilkanKeLayar();
}