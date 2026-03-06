// Parent Class
class BaseScreen {
  final String routeName;
  BaseScreen(this.routeName);

  void navigate() => print("Berpindah ke layar: $routeName");
}

// Child Class mewarisi BaseScreen
class ProfileScreen extends BaseScreen {
  final String username;

  // Meneruskan routeName ke Parent (super)
  ProfileScreen(String routeName, this.username) : super(routeName);

  void loadProfile() => print("Memuat data profil untuk $username...");
}

void main() {
  var profile = ProfileScreen("/profile", "Fachrul");
  profile.navigate(); // Method warisan Parent
  profile.loadProfile(); // Method milik Child
}