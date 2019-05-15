import 'package:flutter/material.dart';
class PopularScreen extends StatefulWidget {
  @override
  _PopularScreenState createState() => _PopularScreenState();
}

class _PopularScreenState extends State<PopularScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context,position){

          return  drawSingleRow();
        },
      itemCount: 20,

    );
  }
 Widget drawSingleRow() {
    return Padding(
      padding: EdgeInsets.all(11.0),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage(
                    "assets/images/placeHolder.png"),
                fit: BoxFit.cover,
              ),
            ),
            width: 100.0,
            height: 100.0,
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Text(
                  "The World Global Warming Annual Summit ",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
                Center(
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Michael Adams",
                            style:
                            TextStyle(color: Colors.grey),
                          ),
                          Row(
                            children: <Widget>[
                              Icon(Icons.access_time,
                                color: Colors.grey,),
                              Text(
                                "15 min",
                                style: TextStyle(
                                    color: Colors.grey),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
