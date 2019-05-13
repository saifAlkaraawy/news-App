import 'package:flutter/material.dart';
import 'package:first_desgin001/shared_ui/NavagatinDrawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
 void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(initialIndex: 0, length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Eplore"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
        bottom: TabBar(
          tabs: [
            Text("WHAT'S NEW",style: TextStyle(fontSize: 14),),
            Text("POPULAR"),
            Text("fovarte"),
          ],
          controller: _tabController,
        ),
      ),
      drawer: NavagatinDrawer(),
      body:TabBarView(children: [
        Container(color: Colors.grey,),
        Container(color: Colors.deepPurple,),
        Container(color: Colors.amberAccent,),
      ],
        controller:_tabController,
      ) ,
    );
  }
}
