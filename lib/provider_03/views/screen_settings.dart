import 'package:flutter/material.dart';
import 'package:provider_tutoi01/provider_03/model/shoe.dart';
import 'package:provider_tutoi01/provider_03/views/drawerMenu.dart';
import 'package:provider/provider.dart';

class Screen_Settings extends StatelessWidget {
  const Screen_Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("Settings"),
          backgroundColor: Provider.of<Shoes>(context, listen: true ).color ,
        ),
        drawer: const DrawerMenu(),
        body: SafeArea(
            minimum: const EdgeInsets.all(10),
            child: Center(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(child: Container()),
                    const Text("Ops!...Still work at here"),
                    Container(
                      margin: const EdgeInsets.all(20),
                      child: const Text("My page will be upload comming soon!"),
                    ),
                    Container(
                      height: 10,
                    ),
                    Consumer<Shoes>(builder: (context, value, child) {
                   return  CircularProgressIndicator(
                      strokeWidth: 5 , 
                      color: value.color 
                    ); 
                    },),
                    Expanded(child: Container()),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 50,
                          child: Image.asset("assets/myLogo.png"),
                        ),
                        SizedBox(
                          height: 50,
                          child: Image.asset("assets/myLogo.png"),
                        ),
                        SizedBox(
                          height: 50,
                          child: Image.asset("assets/myLogo.png"),
                        ),
                        SizedBox(
                          height: 50,
                          child: Image.asset("assets/myLogo.png"),
                        ),
                        SizedBox(
                          height: 50,
                          child: Image.asset("assets/myLogo.png"),
                        ),
                      ],
                    )
                  ]),
            )));
  }
}
