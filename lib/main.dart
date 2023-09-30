
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutoi01/provider_02/view/about.dart';
import 'package:provider_tutoi01/provider_02/view/home.dart';
import 'package:provider_tutoi01/provider_02/model/ui.dart';
import 'package:provider_tutoi01/provider_02/view/settings.dart';
import 'package:provider_tutoi01/provider_03/views/screen_Introduc.dart';
import 'package:provider_tutoi01/provider_03/views/screen_list.dart';

void main() {
  runApp(  MyApp());
}



// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     //  return const ProviderExample() ;  // tuy là truyền được data nhưng không thể vận dụng để thay đổi trong widget!
//     // return const ExampleNotifyChangeProvider() ;  // nay cung ngon nhung co ham future ngon hon :v
//     // return const  FutureProviderExample() ; // giong nhu provider , khứa này có vẻ chỉ ko cập nhật wigdet nó chỉ update dữ liệu theo future :v
//   //  return const  StreamProviderExample() ; // cơ bản là streamBuilder, consumer chỉ chạy theo luồng của stream không hề có cập nhật widgets
//     // StreamProvider thường được dùng để truyển khai bloc bussines :v 
//     return  MutilProviderExample();
//   }
// }  --> this is provier_01 entry ! <---

//  class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (_) => UI()),
//       ],
//       child: MaterialApp(
//         initialRoute: '/',
//         routes: {
//           '/': (context) => Home(),
//           '/about': (context) => About(),
//           '/settings': (context) => Settings(),
//         },
//       ),
//     );
//   }
// }      ---> this is provider_02 entry ! <----


 class MyApp extends StatelessWidget {
  const MyApp({super.key});
   Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UI()),
      ],
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => const IntroScreen(),
          // '/': (context) =>  ListShoesScreen(),
          '/screen_list': (context) => const ListShoesScreen(),
          // '/settings': (context) => Settings(),
        },
      ),
    );
  }
 }