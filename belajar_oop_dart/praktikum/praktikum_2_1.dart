// 1. PUBLIC CLASS (Bisa diakses dari file mana saja)
// Ini adalah simulasi dari StatefulWidget di Flutter
class CounterWidget {
  final String title;
  CounterWidget({required this.title});

  // Method untuk memanggil Private Class
  _CounterState createState() => _CounterState();
}

// 2. PRIVATE CLASS (Hanya bisa diakses di dalam file ini saja)
// Diawali dengan underscore (_). Ini adalah simulasi dari class State<> di Flutter.
class _CounterState {
  // Private variable
  int _count = 0;

  // Getter
  int get count => _count;

  // Method memodifikasi private state
  void increment() {
    _count++;
    print("Logika State: Data _count diubah menjadi $_count");
  }
  // Method build UI
void build(CounterWidget widget) {
print("Merender UI [${widget.title}] > Teks angka di layar: $_count");
}
}
void main() {
var myWidget = CounterWidget(title: "Penghitung Tiket");
// Dalam realita Flutter, pemanggilan ini otomatis oleh sistem. Kita simulasikan:
var state = myWidget.createState();
state.build(myWidget);  // Render awal
state.increment();      // Aksi tombol ditekan
state.build(myWidget);  // Render ulang UI dengan data baru (Rebuild)

// Catatan: Jika kode ini dipanggil dari file main.dart yang berbeda,
// Anda sama sekali TIDAK BISA menulis kode: var stateRahasia = _CounterState(); 


}
