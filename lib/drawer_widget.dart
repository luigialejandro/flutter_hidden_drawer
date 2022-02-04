import 'package:flutter/material.dart';
import 'package:flutter_hidden_drawer/drawer_items.dart';

class DrawerWidget extends StatelessWidget {
  //const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        padding: EdgeInsets.fromLTRB(16, 32, 16, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              buildDrawerItems(context),
            ],
          ),
        ),
      );

  Widget buildDrawerItems(BuildContext context) => Column(
        children: DrawerItems.all
            .map(
              (item) => ListTile(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                leading: Icon(item.icon, color: Colors.white, size: 30),
                title: Text(
                  item.title,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                onTap: () {},
              ),
            )
            .toList(),
      );
}
