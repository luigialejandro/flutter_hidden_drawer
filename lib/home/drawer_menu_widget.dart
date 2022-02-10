import 'package:flutter/material.dart';

class DrawerMenuWidget extends StatelessWidget {
  //const DrawerMenuWidget({ Key? key }) : super(key: key);
  final VoidCallback onClicked;

  const DrawerMenuWidget({
    Key? key,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => IconButton(
        icon: Icon(Icons.menu),
        color: Colors.white,
        onPressed: onClicked,
      );
}
