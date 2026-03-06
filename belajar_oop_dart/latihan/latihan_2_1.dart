class SwitchWidget {
  final String title;
  SwitchWidget({required this.title});

  _SwitchState createState() => _SwitchState();
}

class _SwitchState {
  bool _isOn = false;

  bool get count => _isOn;

  void increment() {
    _isOn = !_isOn;
    print("Logika State: Switch ditekan!");
  }

void build(SwitchWidget widget) {
  String status = _isOn ? "Menyala" : "Mati";
print("Merender UI ${widget.title} [$status]");
}
}
void main() {
var myWidget = SwitchWidget(title: "Tombol Swicth saat ini");
var state = myWidget.createState();
state.build(myWidget);
state.increment();
state.build(myWidget);
state.increment();
state.build(myWidget);
}
