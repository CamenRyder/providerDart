import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:provider_tutoi01/provider_02/drawer_menu.dart';
import 'package:provider_tutoi01/provider_02/model/ui.dart';

const kAppTitle = 'State Management by Provider';
const kStateType = 'Provider';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  String text =
      "Đoạn code trên rất dễ hiểu . Cần lưu ý rằng nhớ sử dụng (1) Consumer<UI> , đoạn này dùng để giúp ta lấy ra được model của class UI. (2) Ở đoạn code này chúng ta truyền 1 function với 3 tham số : context, ui, and child. Trong đó ui là một instance của class UI và đã được binded main widget MyApp.";

  Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(kAppTitle),
        backgroundColor: Colors.teal,
      ),
      drawer: const DrawerMenu(),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Consumer<UI>(
          builder: (context, ui, child) {
            return RichText(
                text: TextSpan(
              text: text,
              style: TextStyle(fontSize: ui.fontSize, color: Colors.black),
            ));
          },
        ),
      ),
    );
  }
}
