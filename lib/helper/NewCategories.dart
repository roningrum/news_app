import 'dart:convert';
import 'package:news_app/data/article_model.dart';
import 'package:http/http.dart' as http;

class NewCategories{
  List<Article> news  = [];
  Future<void> getNewsCategories(String category) async{
    String url = "http://newsapi.org/v2/top-headlines?country=in&category=$category&apiKey=3666cd047c144309ada26d6b1a1011f9";
    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);

    if(jsonData['status'] == "ok"){
      jsonData["articles"].forEach((element){

        if(element['urlToImage'] != null && element['description'] != null){
          Article article = Article(
            title: element['title'],
            author: element['author'],
            description: element['description'],
            urlToImage: element['urlToImage'],
            publshedAt: DateTime.parse(element['publishedAt']),
            content: element["content"],
            articleUrl: element["url"],
          );
          news.add(article);
        }

      });
    }
  }
}