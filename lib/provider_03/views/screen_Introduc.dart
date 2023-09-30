import 'package:flutter/material.dart';
import 'package:provider_tutoi01/provider_02/drawer_menu.dart';
import 'package:provider_tutoi01/provider_03/model/shoe.dart';

class IntroScreen extends StatelessWidget{
  const IntroScreen({super.key});

  
  @override
  Widget build(BuildContext context) {
    Shoes shoes =  Shoes() ;  
    return Scaffold(
      appBar: AppBar(title: const Text("Shoe"), backgroundColor: shoes.color,),
      drawer: const DrawerMenu(), 
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
  } 
  
}