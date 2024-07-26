import 'package:flutter/material.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({super.key});

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey.shade900,
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {},
                  child: const ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Home'),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: const ListTile(
                    leading: Icon(Icons.favorite),
                    title: Text('Favorite'),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: const ListTile(
                    leading: Icon(Icons.notifications),
                    title: Text('Notifications'),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
