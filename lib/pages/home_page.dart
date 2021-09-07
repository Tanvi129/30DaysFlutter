import 'package:flutter/material.dart';
import 'package:flutter_app_first/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days = 30;
    var name = "Tanvi Gupta";
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome To $days days of flutter by $name"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
