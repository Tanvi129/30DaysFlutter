import 'package:flutter/material.dart';
import 'package:flutter_app_first/pages/home_page.dart';
import 'package:flutter_app_first/pages/login_page.dart';
import 'package:flutter_app_first/utils/routes.dart';
import 'package:flutter_app_first/widgets/themes.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      darkTheme: MyTheme.darkTheme(context),
      theme: MyTheme.lightTheme(context),
      initialRoute: "/",
      routes: {
        "/": (context) => HomePage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
