class ApiService {
  static final ApiService _instance = ApiService._internal();

  ApiService._internal() {
    print("ApiService diinisialisasi.");
  }

  factory ApiService() {
    return _instance;
  }
}