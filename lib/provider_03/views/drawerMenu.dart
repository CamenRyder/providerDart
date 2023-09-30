import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.green),
            child: Text("Pratice"),
          ),
          ListTile(
            title: const Text("Home"),
            onTap: () {
              
            },
          ),
          getLine(),
          ListTile(
            title: const Text("List"),
            onTap: () {

            },
          ),
          getLine(),
          ListTile(
            title: const Text("Setting"),
            onTap: () {

            },
          ),
          getLine(),
        ],
      ),
    );
  }
}

Widget getLine() {
  return SizedBox(
    height: 0.5,
    child: Container(
      color: Colors.grey,
    ),
  );
}
