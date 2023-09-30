import 'package:flutter/material.dart';
import 'package:provider_tutoi01/provider_02/drawer_menu.dart';

class Screen_Settings extends StatelessWidget{
  const Screen_Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text("Settings"),
      backgroundColor: Colors.white,
      ),
      drawer: const DrawerMenu(),
      body:  SafeArea(
        minimum:const EdgeInsets.all(10),
        child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
        const  Expanded(
            flex: 8,
            child: Text("Still work at here!") ,
          ) ,  
          const Expanded(
            flex: 8,
            child: Text("My logo design app?!") ,
          ) ,
          Expanded(
            flex: 3,
            child: Image.asset("assets/myLogo.png"))  ,
        ]),)
    );
  }

}