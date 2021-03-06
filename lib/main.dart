import 'package:flutter/material.dart';
import 'package:flutter_hidden_drawer/home/drawer_item.dart';
import 'package:flutter_hidden_drawer/home/drawer_items.dart';
import 'package:flutter_hidden_drawer/home/drawer_widget.dart';
import 'package:flutter_hidden_drawer/home/home_page.dart';
import 'package:flutter_hidden_drawer/home/second_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter hidden sidebar',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Color.fromRGBO(21, 30, 61, 1),
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  //const MainPage({ Key? key }) : super(key: key);
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late double xOffset;
  late double yOffset;
  late double scaleFactor;
  late bool isDrawerOpen;
  DrawerItem item = DrawerItems.search;

  @override
  void initState() {
    super.initState();

    closeDrawer();
  }

  void closeDrawer() => setState(() {
        xOffset = 0;
        yOffset = 0;
        scaleFactor = 1;
        isDrawerOpen = false;
      });

  void openDrawer() => setState(() {
        xOffset = 230;
        yOffset = 150;
        scaleFactor = 0.6;
        isDrawerOpen = true;
      });

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Color(0xFFB691C32),
        body: Stack(
          children: [
            buildDrawer(),
            buildPage(),
          ],
        ),
      );

  Widget buildDrawer() => SafeArea(
        child: Container(
            width: xOffset,
            child: DrawerWidget(
              onSelectedItem: (item) {
                switch (item) {
                  case DrawerItems.search:
                    showSearch(context: context, delegate: MySearchDelegate());
                  //aqu??, anexar la l??gica a desencadenar al elegir los otros casos
                }
              },
            )),
      );

  Widget buildPage() {
    return WillPopScope(
      onWillPop: () async {
        if (isDrawerOpen) {
          closeDrawer();

          return false;
        } else {
          return true;
        }
      },
      child: GestureDetector(
        onTap: closeDrawer,
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          transform: Matrix4.translationValues(xOffset, yOffset, 0)
            ..scale(scaleFactor),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(isDrawerOpen ? 30 : 0),
            child: Container(
              child: AbsorbPointer(
                  absorbing: isDrawerOpen,
                  child: HomePage(openDrawer: openDrawer)),
            ),
          ),
        ),
      ),
    );
  }
}
