import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutoi01/StreamProviderExample.dart';
import 'package:provider_tutoi01/futureProviderExample.dart';
import 'package:provider_tutoi01/mutilProviderExampleByMe.dart';
import 'package:provider_tutoi01/notifyChangeProviderExample.dart';
import 'package:provider_tutoi01/providerExample.dart';
import 'package:provider_tutoi01/providerExampleByMe.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //  return const ProviderExample() ;  // tuy là truyền được data nhưng không thể vận dụng để thay đổi trong widget!
    // return const ExampleNotifyChangeProvider() ;  // nay cung ngon nhung co ham future ngon hon :v
    // return const  FutureProviderExample() ; // giong nhu provider , khứa này có vẻ chỉ ko cập nhật wigdet nó chỉ update dữ liệu theo future :v
  //  return const  StreamProviderExample() ; // cơ bản là streamBuilder, consumer chỉ chạy theo luồng của stream không hề có cập nhật widgets
    // StreamProvider thường được dùng để truyển khai bloc bussines :v 
    return  MutilProviderExample();
  }
}



