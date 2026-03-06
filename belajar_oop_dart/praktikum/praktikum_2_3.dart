class NotificationService {
  void send(String msg) => print("Mengirim notifikasi dasar: $msg");
}

class PushNotification extends NotificationService {
  @override
  void send(String msg) => print("[FCM Push Notif] Muncul di layar: $msg");
}

class EmailNotification extends NotificationService {
  @override
  void send(String msg) => print("[Email] Terkirim ke kotak masuk: $msg");
}

void main() {
  NotificationService notif1 = PushNotification();
  NotificationService notif2 = EmailNotification();

  notif1.send("Ada pesan baru!");
  notif2.send("Laporan bulanan Anda.");
}