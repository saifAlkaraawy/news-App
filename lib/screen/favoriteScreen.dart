import 'dart:math';

import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {

  List<Color> colorList=[
    Colors.red,
    Colors.amberAccent,
    Colors.indigo,
    Colors.purple,
    Colors.lightBlue,
    Colors.lightGreenAccent,
  ];
  Random random =new Random();
  Color _getRandomColor() {
    return colorList[random.nextInt(colorList.length)];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, postion) {
        return Card(
          margin: EdgeInsets.only(bottom: 10),
          child: Column(
            children: <Widget>[
              _authorRow(),
              SizedBox(
                height: 16,
              ),
             _newsItemRow(),
            ],
          ),
        );
      },
      itemCount: 20,
    );
  }

  Widget _authorRow() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage("assets/images/placeHolder.png"),
                fit: BoxFit.cover,
              ),
              shape: BoxShape.circle,
            ),
            margin: EdgeInsets.only(right: 10),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      "Michael Adams",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "15 min • ",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text("Lifestyle",
                        style: TextStyle(
                          color: _getRandomColor(),
                        ),),
                      ],
                    ),
                  ],
                ),
                Icon(Icons.bookmark_border),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _newsItemRow() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: ExactAssetImage('assets/images/placeHolder.png'),
                  fit: BoxFit.cover),
            ),
            width: 124,
            height: 124,
            margin: EdgeInsets.only( right: 16 ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Text(
                  'Tech Tent: Old phones and safe social',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                  ),
                ),
                Text(
                  'We also talk about the future of work as the robots advance, and we ask whether a retro phone',
                  style: TextStyle(color: Colors.grey, fontSize: 16 , height: 1.25),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
