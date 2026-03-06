class BaseDialog {
  void show() => print("Menampilkan pop-up dialog di layar.....");

 // void errorMessage() => print("Berpindah ke layar: $routeName");
}

class ErrorDialog extends BaseDialog {
  final String errorMessage;

  ErrorDialog(this.errorMessage);

  void logError() => print("Menyimpan log error: $errorMessage");
}

void main() {
  var dialog = ErrorDialog("Koneksi terputus!");
  dialog.show();
  dialog.logError();
}
