import 'package:flutter/material.dart';

import 'package:provider_tutoi01/provider_03/model/shoe.dart';
import 'package:provider_tutoi01/provider_03/views/drawerMenu.dart';
import 'package:provider/provider.dart';
class IntroScreen extends StatelessWidget{
  const IntroScreen({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Consumer<Shoes> (builder: (context, shoes, child) {
          return Scaffold(
      appBar: AppBar(title: const Text("Shoe"), backgroundColor: shoes.color,),
      drawer:  const DrawerMenu(), 
      body:  SafeArea(
        minimum: const  EdgeInsets.all(10),
        child: Center(
          child:  Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                Expanded(
                  flex: 8,
                  child: SizedBox(
                    height: 400,
                    width: 400,
                   child: Image.asset(shoes.image),
                )) ,
                Expanded(
                  flex: 4,
                  child: Container(
                  margin: const EdgeInsets.all(20),
                   child: Text(shoes.name, style:  TextStyle(fontSize: 25,fontWeight: FontWeight.bold , color: shoes.color),),)), 
          ],
        )
      ),
        )
    ) ;  
    }) ; 
  } 
  
}
