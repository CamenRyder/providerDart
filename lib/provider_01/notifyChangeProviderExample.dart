import 'package:flutter/material.dart';
import 'package:provider_tutoi01/main.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutoi01/provider_01/myButtonDoSomething.dart';


class MyModel2 with ChangeNotifier {
  //                          <--- MyModel
  String someValue = 'Hello';

  void doSomething() {
    someValue = 'Goodbye';
    print(someValue);
    notifyListeners();
  }
}

class ExampleNotifyChangeProvider extends StatelessWidget {
  const ExampleNotifyChangeProvider({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ChangeNotifierProvider<MyModel2>(
      //      <--- ChangeNotifierProvider
      create: (context) => MyModel2(),
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: const Text('My App')),
          body: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  padding: const EdgeInsets.all(20),
                  color: Colors.green[200],
                  child: Consumer<MyModel2>(
                    //                  <--- Consumer
                    builder: (context, myModel, child) {
                      // ElevatedButton khong can thiet phai thay doi trang thai trong consumner nen co the lam cach ben duoi
                      // return ElevatedButton(
                      //   child: const Text('Do something'),
                      //   onPressed: (){
                      //     myModel.doSomething();
                      //   },
                      // );
                      // su dung cach nay de khong can phai cap nhat trang thai state !
                      return const MyButton();
                    },
                  )),
              Container(
                padding: const EdgeInsets.all(35),
                color: Colors.blue[200],
                child: Consumer<MyModel2>(
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
