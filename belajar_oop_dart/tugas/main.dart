import 'models/user_profile.dart';
import 'services/api_service.dart';
import 'services/payment_gateway.dart';
import 'controllers/wallet_controller.dart';

void main() {
  print("=== Simulasi Logic Aplikasi E-Wallet ===");

  // 1. Menguji Singleton & Modularity (ApiService)
  var api1 = ApiService();
  var api2 = ApiService();
  if (identical(api1, api2)) {
    print("=> ApiService Singleton siap beroperasi. \n");
  }

  // 2. Menguji Factory Constructor (Parsing JSON dari API)
  Map<String, dynamic> jsonResponse = {"id": "USR-99", "name": "Budi Raharjo"};
  var user = UserProfile.fromJson(jsonResponse);
  print("=> Welcome Back, ${user.name} (ID: ${user.id})");

  // 3. Menguji Abstraction (Interface) & Polymorphism
  PaymentGateway payment = MidtransGateway(); // MidtransGateway implements PaymentGateway
payment.processPayment(50000);

  // 4. Menguji Encapsulation, Mixin & Exception Handling
  var wallet = WalletController();
  wallet.topUp(100000); // Saldo menjadi 100000
  try {
    print(" \nMencoba mentransfer saldo Rp 150.000...");
    // authenticateAndTransfer berasal dari Mixin yang digabung ke WalletController
    // Akan melempar InsufficientBalanceException jika saldo < nominal transfer
    wallet.authenticateAndTransfer(150000, wallet.balance);
    } on Exception catch (e) {
      print("Transfer Gagal: $e");
      } finally {
        print("Sesi transaksi ditutup.");
        }
}
