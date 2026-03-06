// 1. Parsing JSON ke Object Model
class UserModel {
  final String id;
  final String username;

  UserModel({required this.id, required this.username});
// Factory Constructor untuk memetakan JSON API
factory UserModel.fromJson(Map<String, dynamic> json) {
  return UserModel(
    id: json['id'],
    username: json['username_api_field'],
    );
    }
    }
// 2. Singleton untuk Service API agar hemat koneksi HTTP
class ApiClient {
  static final ApiClient _instance = ApiClient._internal();
  ApiClient._internal() {
    print("Instance ApiClient dibuat (Hanya 1 kali seumur hidup aplikasi!).");
    }
    factory ApiClient() => _instance;
    }
void main() {
// Simulasi dari respons API (Internet)
Map<String, dynamic> responseAPI = {
  "id": "U01",
  "username_api_field": "flutter_ninja"
};
var user = UserModel.fromJson(responseAPI);
print("Data dimuat: User ID ${user.id} - ${user.username}");
// Menguji Singleton ApiClient
var client1 = ApiClient();
var client2 = ApiClient();
print("Client1 & Client2 adalah objek yang sama? ${identical(client1, client2)}");
}

