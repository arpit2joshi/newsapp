import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:news/article.dart';

class News {
  String category;
  News({required this.category});
  List<Article> news = [];
  Future<void> collectNews() async {
    String key = 'OKyzGYJ44O78YGgAB2Je9AeJHB3akXyr';
    String url =
        'https://api.nytimes.com/svc/topstories/v2/$category.json?api-key=$key';
    http.Response response = await http.get(Uri.https(url, key));
    var data = jsonDecode(response.body);
    if (data['status'] == 'OK') {
      for (var value in data['results']) {
        if (value['title'] != null) {
          Article article = Article(
            title: value['title'],
            newsUrl: value['url'],
            by: value['byline'],
            imageUrl: value['multimedia'][0]['url'].toString(),
          );
          news.add(article);
        }
      }
    }
  }
}
