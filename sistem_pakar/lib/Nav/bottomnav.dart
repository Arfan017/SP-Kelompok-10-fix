import 'package:sistem_pakar/view/home.dart';
import 'package:sistem_pakar/pertanyaan/diagnosa.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../pertanyaan/diagnosa.dart';
import '../view/home.dart';
import 'tab.dart';
import '../view/karakter_tanah.dart';

void main() => runApp(BotNav());

class BotNav extends StatefulWidget {
  BotNav({Key? key}) : super(key: key);

  @override
  _BotNavState createState() => _BotNavState();
}

class _BotNavState extends State<BotNav> {
  final page = [
    HomeWidget(),
    DiagnosaWidget(),
    KarakterLahan(),
    TabBarAbout()
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(
          () => currentIndex = index,
        ),
        items: [
          const BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "Home",
              backgroundColor: Colors.orangeAccent),
          const BottomNavigationBarItem(
              icon: Icon(MdiIcons.clipboardTextSearchOutline),
              label: 'Diagnosa',
              backgroundColor: Colors.orangeAccent),
          const BottomNavigationBarItem(
              icon: Icon(MdiIcons.bookOpenPageVariantOutline),
              label: 'Lahan',
              backgroundColor: Colors.orangeAccent),
          const BottomNavigationBarItem(
              icon: Icon(MdiIcons.informationOutline),
              label: 'About',
              backgroundColor: Colors.orangeAccent),
        ],
      ),
    );
  }
}
