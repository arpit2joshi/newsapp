import 'package:flutter/material.dart';
import 'package:news/article.dart';
import 'package:news/news_api.dart';
import 'package:news/news_card.dart';

class Headline extends StatefulWidget {
  String categoryType;
  Headline({required this.categoryType});
  @override
  _HeadlineState createState() => _HeadlineState();
}

class _HeadlineState extends State<Headline> {
  List<Article> article =[];

  bool showSpinner = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    update();
  }

  update() async {
    News news = News(category: widget.categoryType);
    await news.collectNews();
    setState(() {
      article = news.news;
      showSpinner = false;
    });
  }

  Widget whichContainer() {
   return ListView.builder(
     physics: ClampingScrollPhysics(),
     itemCount: article.length,
     itemBuilder: (context, index) {
       return NewsCard(
         title: article[index].title,
         imageUrl: article[index].imageUrl,
         by: article[index].by,
         newsUrl: article[index].newsUrl,
       );
     },
   );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.cyan[800],
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.cyan[800],
          title: Text('Headlines'),
        ),
        body: whichContainer());
  }
}
