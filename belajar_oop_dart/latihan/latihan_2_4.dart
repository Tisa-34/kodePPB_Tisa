abstract class BaseWidget {
  void showTooltip() {
    print("Menampilkan tooltip....");
  }

  void build();
}
abstract interface class Clickable {
  void onClick();
}

class CustomButton extends BaseWidget implements Clickable {
  @override
  void build() {
    print("Me-render CustomButton ke layar....");
  }

  @override
void onClick() {
print("Klik terdeteksi! Mengeksekusi aksi....");
}
}
void main() {
var button = CustomButton();
button.showTooltip();
button.build();
button.onClick();
}

