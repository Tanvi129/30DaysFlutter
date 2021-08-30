import 'package:flutter/material.dart';
import 'package:flutter_app_first/pages/home_page.dart';
import 'package:flutter_app_first/pages/login_page.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        primarySwatch: Colors.amber,
        
      ),
      theme: ThemeData(
        primarySwatch: Colors.purple,
        
      ),
      
      initialRoute: "/",
      routes: {
        "/" : (context )=> LoginPage(),
        "/home" : (context )=> HomePage(),
        "/login" : (context )=> LoginPage(),
      },
      
    );
  }
}
