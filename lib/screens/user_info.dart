import 'package:flutter/material.dart';
import 'package:news/list_of_fav.dart';
import 'dart:io';

class User extends StatefulWidget {
  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<User> {
//  Future<File> imageFile;
//  takeImage(ImageSource source) {
//    setState(() {
//      imageFile = ImagePicker.pickImage(source: source);
//    });
//  }
//
//  Widget showImage() {
//    return FutureBuilder<File>(
//      future: imageFile,
//      builder: (BuildContext context, AsyncSnapshot<File> snapshot) {
//        if (snapshot.connectionState == ConnectionState.done &&
//            snapshot.data != null) {
//          return Image.file(snapshot.data);
//        } else {
//          return Text('error');
//        }
//      },
//    );
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.cyan[800],
        title: Text('Profile'),
      ),
      backgroundColor: Colors.cyan[800],
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0), color: Colors.white),
          height: double.infinity,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.only(top: 10),
            child: Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.grey[200],
                      radius: 50,
                      child: IconButton(
                        onPressed: () {
//                          takeImage(ImageSource.gallery);
                        },
                        icon: Icon(
                          Icons.person_add,
                          color: Colors.cyan[800],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'User Name',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.cyan[800],
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.edit,
                          color: Colors.cyan[800],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Date of birth',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.cyan[800],
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.edit,
                          color: Colors.cyan[800],
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Divider(
                        color: Colors.cyan[800],
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        'Area of interest',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.cyan[800]),
                      ),
                    ),
                    ListOfFav(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
