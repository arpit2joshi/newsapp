import 'package:flutter/material.dart';
import 'package:news/screens/full_article.dart';
class NewsCard extends StatelessWidget {
  String title;
  String imageUrl;
  String by;
  String newsUrl;

  NewsCard(
      {required this.imageUrl,
      required this.title,
      required this.by,
      required this.newsUrl});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15, 15, 15, 5),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ArticleView(
                url: newsUrl,
              ),
            ),
          );
        },
        child: Card(
          elevation: 5,
          child: ListTile(
            leading: Image.network(
              '$imageUrl',
              scale: 1,
            ),
            title: Text(title),
            subtitle: Text(by),
          ),
        ),
      ),
    );
  }
}
