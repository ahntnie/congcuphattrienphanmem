import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green,
            ),
            child: Text(
              'Menu',
              style: TextStyle(
                color: Colors.green,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: Text('Item 1'),
          ),
          ListTile(
            title: Text('Item 2'),
          ),
        ],
      ),
    );
  }
}
