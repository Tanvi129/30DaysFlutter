import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_first/models/catalog.dart';
import 'package:flutter_app_first/widgets/drawer.dart';
import 'package:flutter_app_first/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
   @override
    void initState() {
      super.initState();
      loadData();
    }

    loadData() async {
      //await Future.delayed(Duration(seconds: 2));
      final catalogJson =
          await rootBundle.loadString("assets/files/catalog.json");
      final decodedData = jsonDecode(catalogJson);
      var productData = decodedData["products"];
      CatalogModel.items = List.from(productData)
          .map<Item>((item) => Item.fromMap(item))
          .toList();
      setState(() {});
    }
  @override
  Widget build(BuildContext context) {
    int days = 30;
    var name = "Tanvi Gupta";
    //final dummylist = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView.builder(
            itemCount: CatalogModel.items.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                item: CatalogModel.items[index],
              );
            }),
      ),
      drawer: MyDrawer(),
    );
  }
}
