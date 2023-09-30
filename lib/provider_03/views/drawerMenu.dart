import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider_tutoi01/provider_03/model/shoe.dart';
import 'package:provider/provider.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Consumer<Shoes>(
            builder: (context, shoes, child) {
              return DrawerHeader(
                decoration: BoxDecoration(color: shoes.color),
                child: const Center(
                  child: Text(
                    "Reliable your shoes",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              );
            },
          ),
          ListTile(
            title: const Text(
              "Home",
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.pushNamed(context, "/");
            },
          ),
          getLine(),
          ListTile(
            title: const Text(
              "List",
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.pushNamed(context, "/list");
            },
          ),
          getLine(),
          ListTile(
            title: const Text(
              "Setting",
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.pushNamed(context, "/settings");
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
