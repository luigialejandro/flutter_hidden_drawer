import 'package:flutter/material.dart';
import 'package:flutter_hidden_drawer/drawer_menu_widget.dart';

class HomePage extends StatelessWidget {
  //const HomePage({ Key? key }) : super(key: key);
  final VoidCallback openDrawer;

  const HomePage({
    Key? key,
    required this.openDrawer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          leading: DrawerMenuWidget(onClicked: openDrawer),
          title: Text('Home Page'),
        ),
      );
}
