import 'package:flutter/material.dart';

const kTitle = 'Provider';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children:<Widget> [
          const DrawerHeader(  // setup drawerHeader ! 
            decoration: BoxDecoration(
              color:  Color.fromARGB(255, 186, 45, 35),
            ),
            child: Center(
              child: Text(
                kTitle,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          // getListTile('home', onTap: () {
          //  // Navigator.pushReplacementNamed(context, '/');
          //   Navigator.pushNamed(context, '/') ;  
          // }),
           ListTile(
            title: const Text("Home"),
            onTap: () {
              print("tap tap"); 
              // Navigator.pushNamed(context, '/') ;  
              Navigator.pushReplacementNamed(context, '/');
            },
          ), 
          getLine(),
          // getListTile('about', onTap: () {
          //  // Navigator.pushReplacementNamed(context, '/about');
            
          // }),
          ListTile(
            title: const Text("List Shoes"),
            onTap: () {
              print("tap tap"); 
              Navigator.pushNamed(context, '/screen_list') ;  
            },
          ), 
          getLine(),
           ListTile(
            title: const Text("Settings"),
            onTap: () {
              print("tap tap"); 
              Navigator.pushNamed(context, '/settings') ;  
            },
          ), 
        ],
      ),
    );
  }

  Widget getLine() {
    return SizedBox(
      height: 0.5,
      child: Container(
        color: Colors.grey,
      ),
    );
  }

  Widget getListTile(String title, {required Function onTap}) {

     return ListTile(
      title: Text(title),
      onTap: () => onTap,
    );
  }
}
