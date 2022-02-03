import 'package:flutter/material.dart';
import 'package:flutter_hidden_drawer/drawer_item.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:hidden_drawer_example/model/drawer_item.dart';

class DrawerItems {
  static const home = DrawerItem(title: 'Home', icon: Icons.home);
  static const explore = DrawerItem(title: 'Explore', icon: Icons.explore);
  static const favorites = DrawerItem(title: 'Favorites', icon: Icons.favorite);
  static const messages = DrawerItem(title: 'Messages', icon: Icons.mail);
  static const profile =
      DrawerItem(title: 'Profile', icon: Icons.verified_user);
  static const settings = DrawerItem(title: 'Settings', icon: Icons.settings);
  static const logout = DrawerItem(title: 'Logout', icon: Icons.logout);

  static final List<DrawerItem> all = [
    home,
    explore,
    favorites,
    messages,
    profile,
    settings,
    logout,
  ];
}
