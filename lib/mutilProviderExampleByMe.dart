import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Student extends ChangeNotifier {
  String name = "Minh Hieu";
  void getName() {
    print("Hello world!");
    name = "TUI TEN HIEU";
    notifyListeners();
  }
}

class Teacher extends ChangeNotifier {
  String name = "Thanh Nga";
  void getName() {
    print("Hello world!");
    name = "TUI TEN Nga";
    notifyListeners();
  }
}

class MutilProviderExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Student(),
        ),
        ChangeNotifierProvider(
          create: (context) => Teacher(),
        ),
      ],
      builder: (context, child) {
        return MaterialApp(
          home: Scaffold(
            appBar: AppBar(
              title: const Text("My pratice  Multi Provider"),
            ),
            body: Center(child:  Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                    Consumer<Student>(builder:(context, value, child) {
                        return ElevatedButton(onPressed:() {
                           final  model =  Provider.of<Student>(context, listen: false) ;  
                           model.getName() ;  
                        }, child: const Text("Student"));  
                    }, ),
                    Consumer<Teacher>(builder:(context, value, child) {
                        return ElevatedButton(onPressed:() {
                           final  model =  Provider.of<Teacher>(context, listen: false) ;  
                           model.getName() ;  
                        }, child: const Text("Teacher"));  
                    }, ),
                    Consumer<Student>(builder:(context, value, child) {
                      return Text(value.name.toString());
                    },) , 
                     Consumer<Teacher>(builder:(context, value, child) {
                      return Text(value.name.toString());
                    },)
              ],
            ),)
          ),
        );
      },
    );
  }
}
