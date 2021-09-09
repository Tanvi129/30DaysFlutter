import 'package:flutter/material.dart';
import 'package:flutter_app_first/models/catalog.dart';
import 'package:flutter_app_first/widgets/drawer.dart';
import 'package:flutter_app_first/widgets/item_widget.dart';

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
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView.builder(
            itemCount: CatalogModel.items.length,
            itemBuilder: (context, index) {
              return ItemWidget(item: CatalogModel.items[index]);
            }),
      ),
      drawer: MyDrawer(),
    );
  }
}
