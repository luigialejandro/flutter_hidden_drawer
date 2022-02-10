import 'package:flutter/material.dart';
import 'package:flutter_hidden_drawer/home/drawer_item.dart';
import 'package:flutter_hidden_drawer/home/drawer_items.dart';

class DrawerWidget extends StatelessWidget {
  final ValueChanged<DrawerItem> onSelectedItem;

  const DrawerWidget({
    Key? key,
    required this.onSelectedItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        padding: EdgeInsets.fromLTRB(16, 32, 16, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                title: Text(
                  'Luis Alejandro Moreno Cortés',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 25,
                  child: CircleAvatar(
                    backgroundColor: Color(0xFFB10312B),
                    radius: 23,
                    child: Text(
                      'LC',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Divider(height: 25, thickness: 2, color: Colors.white),
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
                onTap: () => onSelectedItem(item),
              ),
            )
            .toList(),
      );
}
