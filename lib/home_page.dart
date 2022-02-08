import 'package:flutter/material.dart';
import 'package:flutter_hidden_drawer/card_item.dart';
import 'package:flutter_hidden_drawer/drawer_menu_widget.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  final VoidCallback openDrawer;
  const HomePage({
    Key? key,
    required this.openDrawer,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  var now = new DateTime.now();
  var formatter = new DateFormat('dd-MM-yyyy');

  final List<MyTabs> _tabs = [
    new MyTabs(title: "lamc2402@gmail.com", color: Color(0xFFB10312B)),
    new MyTabs(title: "MOCL910224SB2", color: Color(0xFFB691C32)),
    new MyTabs(title: "Buzón activo", color: Color(0xFFB6F7271))
  ];

  String _contribuyenteNombres = "Luis Alejandro";
  String _contribuyenteApellidoPaterno = "Moreno";
  String _contribuyenteApellidoMaterno = "Cortés";

  late MyTabs _myHandler;
  late TabController _controller;
  void initState() {
    super.initState();
    _controller = new TabController(length: 3, vsync: this);
    _myHandler = _tabs[0];
    _controller.addListener(_handleSelected);
  }

  void _handleSelected() {
    setState(() {
      _myHandler = _tabs[_controller.index];
    });
  }

  List<CardItem> items0 = [
    const CardItem(
      satServiceIcon:
          Icon(Icons.qr_code_scanner, size: 45, color: Colors.white),
      satServicetitle: 'Verificador de códigos',
    ),
    const CardItem(
      satServiceIcon: Icon(Icons.smart_screen, size: 45, color: Colors.white),
      satServicetitle: 'Tutoriales',
    ),
    const CardItem(
      satServiceIcon:
          Icon(Icons.campaign_rounded, size: 45, color: Colors.white),
      satServicetitle: 'Noticias',
    ),
    const CardItem(
      satServiceIcon:
          Icon(Icons.assessment_rounded, size: 45, color: Colors.white),
      satServicetitle: 'Indicadores',
    ),
    const CardItem(
      satServiceIcon:
          Icon(Icons.calendar_view_month, size: 45, color: Colors.white),
      satServicetitle: 'Calendario fiscal',
    ),
    const CardItem(
      satServiceIcon:
          Icon(Icons.qr_code_rounded, size: 45, color: Colors.white),
      satServicetitle: 'e.firma portable',
    ),
  ];

  List<CardItem> items1 = [
    const CardItem(
      satServiceIcon: Icon(Icons.star_rounded, size: 45, color: Colors.white),
      satServicetitle: 'Valorar',
    ),
    const CardItem(
      satServiceIcon: Icon(Icons.article, size: 45, color: Colors.white),
      satServicetitle: 'Acerca de',
    ),
    const CardItem(
      satServiceIcon: Icon(Icons.apps, size: 45, color: Colors.white),
      satServicetitle: 'Otras aplicaciones',
    ),
    const CardItem(
      satServiceIcon: Icon(Icons.event, size: 45, color: Colors.white),
      satServicetitle: 'Citas',
    ),
    const CardItem(
      satServiceIcon: Icon(Icons.grading, size: 45, color: Colors.white),
      satServicetitle: 'Inscripción al RFC',
    ),
    const CardItem(
      satServiceIcon: Icon(Icons.help, size: 45, color: Colors.white),
      satServicetitle: 'Preguntas frecuentes',
    ),
  ];

  List<CardItem> items2 = [
    const CardItem(
      satServiceIcon: Icon(Icons.markunread_mailbox_outlined,
          size: 45, color: Colors.white),
      satServicetitle: 'Mensajes',
    ),
    const CardItem(
      satServiceIcon:
          Icon(Icons.chat_bubble_outline, size: 45, color: Colors.white),
      satServicetitle: 'Chat uno a uno',
    ),
    const CardItem(
      satServiceIcon: Icon(Icons.call, size: 45, color: Colors.white),
      satServicetitle: 'MarcaSAT',
    ),
    const CardItem(
      satServiceIcon: Icon(Icons.exit_to_app, size: 45, color: Colors.white),
      satServicetitle: 'Cerrar sesión',
    ),
    const CardItem(
      satServiceIcon: Icon(Icons.padding, size: 45, color: Colors.white),
      satServicetitle: 'Por definir',
    ),
    const CardItem(
      satServiceIcon: Icon(Icons.padding, size: 45, color: Colors.white),
      satServicetitle: 'Por definir',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_myHandler.title,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Color(0xFFBDDC9A3))),
        backgroundColor: _myHandler.color,
        //centerTitle: true,
        leading: DrawerMenuWidget(onClicked: widget.openDrawer),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_active_rounded),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
        bottom: TabBar(
          controller: _controller,
          indicatorColor: Color(0xFFBDDC9A3),
          indicatorWeight: 5,
          labelColor: Color(0xFFBDDC9A3),
          unselectedLabelColor: Colors.white,
          tabs: [
            Tab(icon: Icon(Icons.home), text: 'Contacto'),
            Tab(icon: Icon(Icons.assignment_ind_rounded), text: 'RFC'),
            Tab(icon: Icon(Icons.markunread_mailbox_rounded), text: 'Buzón'),
          ],
        ),
        elevation: 20,
        titleSpacing: 2,
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          buildHomePage(),
          buildHomePage(),
          buildHomePage(),
        ],
      ),
    );
  }

  Widget buildHomePage() => SingleChildScrollView(
        child: Stack(children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 4, left: 4, right: 4),
                width: double.infinity,
                height: 280,
                decoration: BoxDecoration(
                    color: Color(0xFFBBC955C),
                    //color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        //color: Colors.yellow,
                        margin: EdgeInsets.only(top: 15),
                        height: 100,
                        width: 160,
                        child: Image.asset('assets/images/sat_movil.png'),
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 15),
                        child: Text(
                            'Bienvenid@ $_contribuyenteNombres $_contribuyenteApellidoPaterno $_contribuyenteApellidoMaterno',
                            style: TextStyle(fontSize: 20)),
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Text(
                            'El día de hoy es: ${formatter.format(now).toString()}',
                            style: TextStyle(fontSize: 20)),
                      ),
                    ),

                    //Center(
                    //  child: Container(
                    //    //color: Colors.green,
                    //    height: 80,
                    //    width: 80,
                    //    child: CircleAvatar(
                    //      backgroundColor: Color(0xFFB691C32),
                    //      //radius: 55,
                    //      child: CircleAvatar(
                    //        backgroundColor: Color(0xFFB98989A),
                    //        radius: 38,
                    //        child: Text(
                    //          '${_contribuyenteNombres[0]}${_contribuyenteApellidoMaterno[0]}',
                    //          style: TextStyle(
                    //            fontWeight: FontWeight.bold,
                    //            fontSize: 30,
                    //            color: Color(0xFFB691C32),
                    //          ),
                    //        ),
                    //      ),
                    //    ),
                    //  ),
                    //),
                    //Center(
                    //  child: Container(
                    //    child: Text(now),
                    //  ),
                    //),
                    Center(
                      child: Container(
                        padding: EdgeInsets.only(top: 10),
                        child:
                            Text('Mi espacio', style: TextStyle(fontSize: 25)),
                      ),
                    ),
                  ],
                )),
              ),
              Container(
                //margin: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  //borderRadius: BorderRadius.all(Radius.circular(15))),
                  //child: Center(child: Text('Bienvenido lo que sea')),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Color(0xFFB691C32),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                          child: Text('Primer grupo',
                              style: TextStyle(fontSize: 25))),
                    ),
                    Container(
                      height: 130,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.separated(
                        padding: EdgeInsets.all(2),
                        scrollDirection: Axis.horizontal,
                        itemCount: 6,
                        separatorBuilder: (context, _) => SizedBox(width: 4),
                        itemBuilder: (context, index) =>
                            buildCard(item: items0[index]),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Color(0xFFB691C32),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                          child: Text('Segundo grupo',
                              style: TextStyle(fontSize: 25))),
                    ),
                    Container(
                      height: 130,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.separated(
                        padding: EdgeInsets.all(2),
                        scrollDirection: Axis.horizontal,
                        itemCount: 6,
                        separatorBuilder: (context, _) => SizedBox(width: 4),
                        itemBuilder: (context, index) =>
                            buildCard(item: items1[index]),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Color(0xFFB691C32),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                          child: Text('Tercer grupo',
                              style: TextStyle(fontSize: 25))),
                    ),
                    Container(
                      height: 130,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.separated(
                        padding: EdgeInsets.all(2),
                        scrollDirection: Axis.horizontal,
                        itemCount: 6,
                        separatorBuilder: (context, _) => SizedBox(width: 4),
                        itemBuilder: (context, index) =>
                            buildCard(item: items2[index]),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ]),
      );

  Widget buildCard({
    required CardItem item,
  }) =>
      Container(
        width: 150,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Material(
                  color: Color(0xFFB235B4E),
                  child: Center(
                    child: Ink(
                        //color: Colors.amber,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            //color: Colors.red,
                            height: 60,
                            width: 60,
                            child: item.satServiceIcon,
                          ),
                          SizedBox(
                            height: 0,
                          ),
                          Container(
                            //color: Colors.yellow,
                            height: 40,
                            child: Center(
                              child: Text(item.satServicetitle,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white)),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ])),
                  )),
            ),
          ],
        ),
      );
}

class MyTabs {
  final String title;
  final Color? color;
  MyTabs({this.title = '', this.color});
}
