import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutoi01/provider_02/drawer_menu.dart';
import 'package:provider_tutoi01/provider_02/model/ui.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('Settings'),
      ),
      drawer: DrawerMenu(),
      body: Consumer<UI>(builder: (context, ui, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Text(
                  'Font Size: ${ui.fontSize.toInt()}',
                )),
            Slider(
                min: 0.5,
                value: ui.sliderFontSize,
                onChanged: (newValue) {
                  ui.fontSize = newValue;
                }),
          ],
        );
      }),
    );
  }
}
