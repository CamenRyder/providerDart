import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyModel1 {
  //                                               <--- MyModel
  String someValue = 'Hello';
  void doSomething() {
    someValue = 'Goodbye';
    print(someValue);
  }
}

class ProviderExample extends StatelessWidget {
  const ProviderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider<MyModel1>(
      //                                <--- Provider
      create: (context) => MyModel1(),
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: const Text('My App')),
          body: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  padding: const EdgeInsets.all(20),
                  color: Colors.green[200],
                  child: Consumer<MyModel1>(
                    //                    <--- Consumer
                    builder: (context, myModel, child) {
                      return ElevatedButton(
                        child: const Text('Do something'),
                        onPressed: () {
                          // We have access to the model.
                          myModel.doSomething();
                        },
                      );
                    },
                  )),
              Container(
                padding: const EdgeInsets.all(35),
                color: Colors.blue[200],
                child: Consumer<MyModel1>(
                  //                    <--- Consumer
                  builder: (context, myModel, child) {
                    return Text(myModel.someValue);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
