abstract interface class PaymentGateway {
  void processPayment(int amount);
}

class MidtransGateway implements PaymentGateway {
  @override
  void processPayment(int amount) {
    print("=> Memproses pembayaran Rp $amount melalui Midtrans...");
  }
}