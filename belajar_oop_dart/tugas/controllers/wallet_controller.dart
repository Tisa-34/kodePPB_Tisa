class InsufficientBalanceException implements Exception {
  final String message;

  InsufficientBalanceException(this.message);

  @override
  String toString() => message;
}

mixin SecurityMixin {
  void authenticateAndTransfer(int amount, int currentBalance) {
    print("Autentikasi pengguna berhasil.");

    if (currentBalance < amount) {
      throw InsufficientBalanceException("Saldo tidak mencukupi.");
    }

    print("Transfer Rp $amount berhasil diproses.");
  }
}

class WalletController with SecurityMixin {
  int _balance = 0;

  int get balance => _balance;

  void topUp(int amount) {
    _balance += amount;
    print("Top-Up berhasil. Saldo saat ini: Rp $_balance");
  }
}