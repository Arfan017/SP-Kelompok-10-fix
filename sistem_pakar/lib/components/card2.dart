import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'card_1.dart';

class CardWidget extends StatefulWidget{
  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      height: 330,
      decoration: BoxDecoration(
        color: Color(0xFFEEEEEE),
      ),
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: Color(0xFFF5F5F5),
        child: Card1Widget(),
      ),
    );
  }
}
