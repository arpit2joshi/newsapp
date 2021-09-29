import 'package:flutter/material.dart';

class ListOfFav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: <Widget>[
        Liked(
          title: 'Sachin',
          imgUrl:
              'https://www.espncricinfo.com/db/PICTURES/CMS/128400/128483.1.jpg',
        ),
        Liked(
          title: 'chennai',
          imgUrl:
              'https://c0.wallpaperflare.com/preview/403/319/581/chennai-india-chennai-lighthouse-marina.jpg',
        ),
        Liked(
          title: 'kerala',
          imgUrl:
              'https://images.financialexpress.com/2021/01/Kottayam-houseboats-kerala-tourism.jpg',
        ),
        Liked(
          title: 'cricket',
          imgUrl:
              'https://media.istockphoto.com/photos/closeup-of-red-cricket-ball-and-bat-sitting-on-grass-picture-id177427917?k=20&m=177427917&s=612x612&w=0&h=kr-FOxME8KOnnhYsuR6WFAfB-Hv_ch20Fz5xnzeSU10=',
        ),
      ],
    );
  }
}

class Liked extends StatelessWidget {
  String title;
  String imgUrl;
  Liked({required this.title, required this.imgUrl});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            backgroundImage: NetworkImage(imgUrl),
            radius: 25,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              color: Colors.cyan[800],
            ),
          ),
          Spacer(),
          CircleAvatar(
            backgroundColor: Colors.grey.shade50,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.star,
                color: Colors.yellow[400],
              ),
            ),
          )
        ],
      ),
    );
  }
}
