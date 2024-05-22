import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Text('Pedometer'),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 108, 180, 238),
            ),
          ),
          ListTile(
            title: Text('Item 1'),
            onTap: () {
              // Handle onTap for Item 1
            },
          ),
          ListTile(
            title: Text('Item 2'),
            onTap: () {
              // Handle onTap for Item 2
            },
          ),
        ],
      ),
    );
  }
}
