import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'LOGO HERE',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Profile'),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Experience'),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Education'),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Projects'),
          ),
        ],
      ),
    );
  }
}
