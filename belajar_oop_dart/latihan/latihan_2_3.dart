class PaymentMethod {
  void processPayment() => print("Memproses Pembayaran");
}

class EWalet extends PaymentMethod {
  @override
  void processPayment() => print("Memproses Pembayaran Menggunakan E-Wallet (QRIS)...");
}

class BankTransfer extends PaymentMethod {
  @override
  void processPayment() => print("Memproses Pembayaran Menggunakan Virtual Account Bank....");
}

void main() {
  PaymentMethod payment1 = EWalet();
  PaymentMethod payment2 = BankTransfer();

  payment1.processPayment();
  payment2.processPayment();
}