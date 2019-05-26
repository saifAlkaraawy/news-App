import 'package:flutter/material.dart';
import 'package:first_desgin001/modles/navmenuitem.dart';
import 'package:first_desgin001/screen/home_screen.dart';

class NavagatinDrawer extends StatefulWidget {
  @override
  _NavagatinDrawerState createState() => _NavagatinDrawerState();
}

class _NavagatinDrawerState extends State<NavagatinDrawer> {
  List<NavMenuItem> navItem = [
    NavMenuItem("explore", () => HomeScreen()),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView.builder(
        itemBuilder: (context, postion) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(
                navItem[postion].title,
                style: TextStyle(color: Colors.grey.shade700, fontSize: 22),
              ),
              trailing: Icon(
                Icons.chevron_right,
                color: Colors.grey.shade400,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => navItem[postion].destination()),
                );
              },
            ),
          );
        },
        itemCount: navItem.length,
      ),
    );
  }
}
