class AppConfig {
  static final AppConfig _instance = AppConfig._internal();

  AppConfig._internal() {
    print("Config diinisialisasi.");
  }

  factory AppConfig() {
    return _instance;
  }
}

class ArticleModel {
  final String title;
  final String content;

  ArticleModel({required this.title, required this.content});

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      title: json['title'],
      content: json['content'],
    );
  }
}

void main() {
  var config1 = AppConfig();
  var config2 = AppConfig();

  print("Apakah config 1 dan 2 identik? ${identical(config1, config2)}");

  Map<String, dynamic> data = {
    "title": "Belajar Dart 3",
    "content": "Materi tentang factory constructor"
  };

  var article = ArticleModel.fromJson(data);

  print("Judul Artikel: ${article.title}");
}