import 'package:flutter/material.dart';
import 'package:flutter_hidden_drawer/home/drawer_item.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:hidden_drawer_example/model/drawer_item.dart';

class DrawerItems {
  static const search = DrawerItem(title: 'Buscar', icon: Icons.search);
  static const checker =
      DrawerItem(title: 'Verificador de códigos', icon: Icons.qr_code_scanner);
  static const tutorials =
      DrawerItem(title: 'Tutoriales', icon: Icons.smart_screen);
  static const news =
      DrawerItem(title: 'Noticias', icon: Icons.campaign_rounded);
  static const indicators =
      DrawerItem(title: 'Indicadores', icon: Icons.assessment_rounded);
  static const calendar =
      DrawerItem(title: 'Calendario fiscal', icon: Icons.calendar_view_month);
  static const efirma =
      DrawerItem(title: 'e.firma portable', icon: Icons.qr_code_rounded);
  static const assess = DrawerItem(title: 'Valorar', icon: Icons.star_rounded);
  static const about = DrawerItem(title: 'Acerca de', icon: Icons.article);
  static const apps = DrawerItem(title: 'Otras aplicaciones', icon: Icons.apps);
  static const logout = DrawerItem(title: 'Cerrar sesión', icon: Icons.logout);

  static final List<DrawerItem> all = [
    search,
    checker,
    tutorials,
    news,
    indicators,
    calendar,
    efirma,
    assess,
    about,
    apps,
    logout,
  ];
}
