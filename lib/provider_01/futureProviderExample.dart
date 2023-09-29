import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class FutureProviderExample extends StatelessWidget{
  const FutureProviderExample({super.key});
  @override
  Widget build(BuildContext context) {
    return FutureProvider<MyModel3>( //                      <--- FutureProvider
      initialData: MyModel3(someValue: 'default value'),
      create: (context) => someAsyncFunctionToGetMyModel(),
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(title:const  Text('My App')),
          body: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Container(
                padding: const EdgeInsets.all(20),
                color: Colors.green[200],
                child: Consumer<MyModel3>( //                    <--- Consumer
                  builder: (context, myModel, child) {
                    return ElevatedButton(
                      child: const Text('Do something'),
                      onPressed: (){
                        myModel.doSomething();
                      },
                    );
                  },
                )
              ),

              Container(
                padding: const EdgeInsets.all(35),
                color: Colors.blue[200],
                child: Consumer<MyModel3>( //                    <--- Consumer
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

Future<MyModel3> someAsyncFunctionToGetMyModel() async { //  <--- async function
  await Future.delayed(const Duration(seconds: 3));
  return MyModel3(someValue: 'new data');
}

class MyModel3 { //                                               <--- MyModel
  MyModel3({required this.someValue});
  String someValue = 'Hello';
  Future<void> doSomething() async {
    await Future.delayed(const Duration(seconds: 2));
    someValue = 'Goodbye';
    print(someValue);
  }
}
