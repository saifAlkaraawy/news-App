import 'package:flutter/material.dart';

class WhatNews extends StatefulWidget {
  @override
  _WhatNewsState createState() => _WhatNewsState();
}

class _WhatNewsState extends State<WhatNews> {
  TextStyle styleHader = new TextStyle(
    color: Colors.white,
    fontSize: 24.0,
    fontWeight: FontWeight.w600,
  );
  TextStyle styleDecraption = new TextStyle(
    color: Colors.white,
    fontSize: 15.0,
  );
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _drawHeader(),
          _drawTopStories()

        ],
      ),
    );
  }

  Widget _drawTopStories() {
    return Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.grey.shade100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                child: Text(
                  "Top Stories",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                padding: EdgeInsets.only(left: 16, top: 16),
              ),
              Card(
                child: Column(
                  children: <Widget>[
                    drawSingleRow(),
                    _drawDivider(),
                    drawSingleRow(),
                    _drawDivider(),
                    drawSingleRow(),
                    _drawDivider(),
                  ],
                ),
              ),
              _drawSectionTitle("Recent Updates"),
              _drawRecentUpdatesCard(Colors.blue),
              _drawRecentUpdatesCard(Colors.red),


            ],
          ),
        );
  }
  Widget _drawSectionTitle(String title) {
    return Padding(
      padding: EdgeInsets.only(top:30,left: 16),
      child: Text(
        title,
        style: TextStyle(
            color: Colors.grey.shade700,
            fontWeight: FontWeight.w600,
            fontSize: 16),
      ),
    );
  }
  Widget _drawHeader() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.27,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: ExactAssetImage("assets/images/placeHolder.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                left: 50,
                right: 50,
              ),
              child: Text(
                "How Terriers & Royals Gatecrashed Final",
                style: styleHader,
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 48, right: 48, top: 15),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do",
                style: styleDecraption,
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
  Padding drawSingleRow() {
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
  Widget _drawDivider() {
    return Container(
      height: 1,
      width: double.infinity,
      color: Colors.grey.shade100,
    );
  }

  Widget _drawRecentUpdatesCard(Color color) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage('assets/images/placeHolder.png'),
                fit: BoxFit.cover,
              ),
            ),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.25,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, left: 16),
            child: Container(
              padding: EdgeInsets.only(left: 24, right: 24, top: 2, bottom: 2),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                'SPORT',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 8),
            child: Text(
              'Vettel is Ferrari Number One - Hamilton',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 16),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.timer,
                  color: Colors.grey,
                  size: 18,
                ),
                SizedBox( width: 4, ),
                Text(
                  '15 Min',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}
