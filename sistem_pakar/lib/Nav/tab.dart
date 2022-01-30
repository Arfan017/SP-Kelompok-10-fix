import 'package:sistem_pakar/view/about/about_apk.dart';
import 'package:sistem_pakar/view/about/about_kami.dart';
import 'package:sistem_pakar/view/about/about_pakar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TabBarAbout extends StatefulWidget {
  const TabBarAbout({Key? key}) : super(key: key);

  @override
  _TaBbarAbout createState()
  {
    return _TaBbarAbout();
  }
}
class _TaBbarAbout extends State<TabBarAbout> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: AppBar(
            automaticallyImplyLeading: false,
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Text("Aplikasi", style: TextStyle(color: Colors.white),)
                  ),
                Tab(
                  child: Text("Kami", style: TextStyle(color: Colors.white),)
                  ),
                Tab(
                  child: Text("Pakar", style: TextStyle(color: Colors.white),)
                  ),
              ],
            ),
            // title: Text('About'),
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            AboutApkWidget(),
            AboutKamiWidget(),
            AboutPakarWidget(),
          ],
        ),
      ),
    );
  }
}