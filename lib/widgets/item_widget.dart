import 'package:flutter/material.dart';
import 'package:flutter_app_first/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    bool imageAvailable = false;
    if (item.image == null) {
      imageAvailable = false;
    } else {
      imageAvailable = true;
    }

    return Card(
      child: ListTile(
        onTap: () {
          print("Button Pressed");
        },
        leading: imageAvailable
            ? Image.network(item.image ?? "assets/images/notfound.png")
            : Image.asset("assets/images/notfound.png"),
        title: Text(item.name),
        subtitle: Text(item.desc ?? "Not Available"),
        trailing: Text(
          "\$${item.price}",
          textScaleFactor: 1.5,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.purple,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      ),
    );
  }
}
