import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutoi01/provider_02/drawer_menu.dart';
import 'package:provider_tutoi01/provider_02/model/ui.dart';


class About extends StatelessWidget {
 String text =  "Tương tự như màn hình Home , bạn mở file about.dart và thêm đoạn code sau :";

 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: const Text('About'),
       backgroundColor: Colors.teal,
     ),
     drawer: const DrawerMenu(),
     body: Container(
       margin: const EdgeInsets.all(10.0),
       child: Consumer<UI>(
         builder: (context, ui, child) {
           return RichText(
             text: TextSpan(
               text: text,
               style:
                   TextStyle(fontSize: ui.fontSize, color: Colors.lightBlue),
             ),
           );
         },
       ),
     ),
   );
 }
}
