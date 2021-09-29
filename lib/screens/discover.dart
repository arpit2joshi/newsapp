import 'package:flutter/material.dart';
import 'package:news/discover_types.dart';
import 'package:news/screens/headlines.dart';
class Discover extends StatelessWidget {
  List<DiscoverTypes> types = [
    DiscoverTypes(
        type: 'home',
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuWl3dBoXQZtEwzTL5pPY1ym-CFOSM7DOE4Q&usqp=CAU'),
    DiscoverTypes(
        type: 'arts',
        imageUrl:
            'https://lh3.googleusercontent.com/proxy/pwuyVzPnY3oQZ3w9UjGD9DMioGvYJ110U9FX9wL7grn9T9kotRPB-XPtCWdunrsIeFOXkBknGoJgsuBoollY-eN63c5r5cJu1R5RUpXt7x1IFaelX0C1d5k'),
    DiscoverTypes(
        type: 'science',
        imageUrl:
            'https://img.freepik.com/free-vector/science-word-theme_23-2148540555.jpg?size=626&ext=jpg'),
    DiscoverTypes(
        type: 'us',
        imageUrl:
            'https://media.istockphoto.com/photos/election-day-in-washington-picture-id1279862622?b=1&k=20&m=1279862622&s=170667a&w=0&h=9ZZaenVVnOS9JYhj8eb_CaE3J1ak4mDxlgj6SKnJVIM='),
    DiscoverTypes(
        type: 'Topics',
        imageUrl:
            'https://e7.pngegg.com/pngimages/103/603/png-clipart-stratford-upon-avon-logo-the-tchoup-yard-graphic-design-graphic-logo-design-company-text.png'),
    DiscoverTypes(
        type: 'Sports',
        imageUrl:
            'https://media.istockphoto.com/photos/cheerful-woman-and-her-business-plan-picture-id1282110628?b=1&k=20&m=1282110628&s=170667a&w=0&h=NDDPlHUlIblxtIa6J0NIv81PGbG-G6GMPTirGuKEV7I='),
    DiscoverTypes(
        type: 'Business',
        imageUrl:
            'https://www.esa.int/var/esa/storage/images/esa_multimedia/images/2019/10/business_with_esa/21093947-3-eng-GB/Business_with_ESA_pillars.jpg')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[800],
      appBar: AppBar(
        title: Text(
          'Discover',
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.cyan[800],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: ListView.builder(
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              itemCount: types.length,
              itemBuilder: (context, index) {
                return cards(
                  title: types[index].type,
                  imageUrl: types[index].imageUrl,
                );
              }),
        ),
      ),
    );
  }
}

class cards extends StatelessWidget {
  String title;
  String imageUrl;
  cards({required this.title,required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Headline(
                      categoryType: title,
                    )));
      },
      child: Card(
        child: ListTile(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 5,
              ),
              Text('Follow $title to see more stories about it'),
              SizedBox(
                height: 10,
              ),
            ],
          ),
          subtitle: Text(
            'Follow $title',
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
          ),
          trailing: Image.network(imageUrl),
        ),
      ),
    );
  }
}
