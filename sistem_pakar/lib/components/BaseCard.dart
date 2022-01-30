import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'cardku.dart';

class BaseCards extends StatefulWidget {
  @override
  BaseCardsState createState() => BaseCardsState();
}

class BaseCardsState extends State<BaseCards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            CardWidget(),
            CardWidget(),
            CardWidget(),
          ],
        ),
      ),
    );
  }
}
