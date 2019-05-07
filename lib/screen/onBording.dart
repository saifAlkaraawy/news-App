import 'package:flutter/material.dart';
import 'package:page_view_indicator/page_view_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:first_desgin001/screen/home_screen.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  List<TextImageIcons> page;

  ValueNotifier<int> _pageViewNotifier = ValueNotifier(0);
  void _updataSeen() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool('seen', true);
  }

  void _addPage() {
    page = new List<TextImageIcons>();
    page.add(TextImageIcons(
      'assets/images/im4.jpg',
      Icons.settings,
      "settings",
    ));
    page.add(TextImageIcons(
      'assets/images/im3.jpg',
      Icons.home,
      "home",
    ));
    page.add(TextImageIcons(
      'assets/images/im2.jpg',
      Icons.snooze,
      "snooze",
    ));
    page.add(TextImageIcons(
      'assets/images/im5.jpg',
      Icons.account_circle,
      "account_circle",
    ));
  }

  @override
  Widget build(BuildContext context) {
    _addPage();

    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
            itemBuilder: (context, index) {
              return Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                      decoration: BoxDecoration(
                    image: DecorationImage(
                        image: ExactAssetImage(page[index]._image),
                        fit: BoxFit.cover),
                  )),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Transform.translate(
                        child: Icon(
                          page[index]._icon,
                          size: 80.0,
                          color: Colors.white,
                        ),
                        offset: Offset(0, -100.0),
                      ),
                      Transform.translate(
                        child: Text(
                          "Wlcome",
                          style: TextStyle(fontSize: 20.2, color: Colors.white),
                        ),
                        offset: Offset(0, -10),
                      ),
                      Padding(
                        child: Text(
                          page[index].text,
                          style: TextStyle(color: Colors.grey),
                        ),
                        padding: EdgeInsets.only(left: 60.0, right: 60.0),
                      ),
                      Transform.translate(
                        child: Align(
                          child: pageViewIndicotor(page.length),
                        ),
                        offset: Offset(0, 15),
                      )
                    ],
                  ),
                ],
              );
            },
            itemCount: page.length,
            onPageChanged: (index) {
              _pageViewNotifier.value = index;
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox.fromSize(
              size: Size(310.0, 40.0),
              child: RaisedButton(
                child: Text(
                  "GET START",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  _updataSeen();
                  Navigator.push(context, MaterialPageRoute(builder: (contex) {
                    return HomeScreen();
                  }));
                },
                color: Colors.red,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget pageViewIndicotor(int length) {
    return PageViewIndicator(
      pageIndexNotifier: _pageViewNotifier,
      length: length,
      normalBuilder: (animationController, index) => Circle(
            size: 8.0,
            color: Colors.grey,
          ),
      highlightedBuilder: (animationController, index) => ScaleTransition(
            scale: CurvedAnimation(
              parent: animationController,
              curve: Curves.ease,
            ),
            child: Circle(
              size: 12.0,
              color: Colors.redAccent,
            ),
          ),
    );
  }
}

class TextImageIcons {
  String _image;
  IconData _icon;
  String _text;

  TextImageIcons(this._image, this._icon, this._text);

  String get text => _text;

  IconData get icon => _icon;

  String get image => _image;
}
