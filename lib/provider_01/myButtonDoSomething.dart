import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutoi01/provider_01/notifyChangeProviderExample.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});
  @override
  Widget build(BuildContext context) {
    final myModel = Provider.of<MyModel2>(context, listen: false);
    return ElevatedButton(
      child: const Text('Do something'),
      onPressed: () {
        myModel.doSomething();
      },
    );
  }
}
