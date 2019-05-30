import 'package:flutter/material.dart';
import 'package:first_desgin001/shared_ui/NavagatinDrawer.dart';
import 'package:first_desgin001/screen/what_news.dart';
import 'package:first_desgin001/screen/favoriteScreen.dart';
import 'package:first_desgin001/screen/popular.dart';
class HeadLineNews extends StatefulWidget {
  @override
  _HeadLineNewsState createState() => _HeadLineNewsState();
}

class _HeadLineNewsState extends State<HeadLineNews>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = new TabController(initialIndex: 0, length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text("News"),
        actions: <Widget>[
          Icon(Icons.search),
          Icon(Icons.more_vert),
        ],
        bottom: TabBar(
          tabs: [
            Tab(
              text: "WHAT'S NEWS",
            ),
            Tab(
              text: "POPULAR",
            ),
            Tab(
              text: "FAVORATE",
            ),
          ],
          controller: tabController,
        ),
      ),
      drawer: NavagatinDrawer(),
      body: TabBarView(children: [
        WhatNews(),
        PopularScreen(),
        FavoriteScreen(),

      ],
      controller: tabController,),
    );
  }
}
