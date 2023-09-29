import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Student extends ChangeNotifier {
  String name = "";
  Student({required this.name});
  void getName() {
    name = "Doan Minh Hiee";
    print("My name is " + name);
    notifyListeners();
  }

  void getScore() {
    name = "Minh Hieu";
    notifyListeners();
  }

  String getNamee() {
    notifyListeners();
    name = "Minh Hieu chua ai?" ;  
    return name;
  }
}

class ExampleProvider extends StatelessWidget {
  const ExampleProvider({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ChangeNotifierProvider(
      create: (context) => Student(name: "Minh Hieu"),
      child: MaterialApp(
          home: Scaffold(
              appBar: AppBar(title: const Text("My pratice")),
              body: Consumer<Student>(
                builder: (context, value, child) {
                  return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              final myModel =
                                  Provider.of<Student>(context, listen: false);
                              myModel.getName();
                            },
                            child: const Text("Click here!")),
                        ElevatedButton(
                            onPressed: () {
                              final myModel =
                                  Provider.of<Student>(context, listen: false);
                              print("name:" + myModel.getNamee());
                              myModel.getScore();
                            },
                            child: const Text("Click here, again!")),
                        Center(
                          child: Text(value.name.toString()),
                        )
                      ]);
                },
              ))),
    );
  }
}
