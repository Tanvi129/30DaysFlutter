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
    final dummylist = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView.builder(
            itemCount: dummylist.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                item: dummylist[index],
              );
            }),
      ),
      drawer: MyDrawer(),
    );
  }
}
