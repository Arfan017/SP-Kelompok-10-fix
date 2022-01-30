import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Card1Widget extends StatefulWidget {
  @override
  _Card1WidgetState createState() => _Card1WidgetState();
}

class _Card1WidgetState extends State<Card1Widget> {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
          'https://picsum.photos/seed/538/600',
          width: double.infinity,
          height: 150,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 0, 0),
          child: Text(
            'Hello World',
            textAlign: TextAlign.start,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 0, 0),
          child: Text(
            'BlaBlaBlaBlaBlaBlaBlaBla...',
            style: TextStyle(),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 0, 0),
          // ignore: deprecated_member_use
          child: RaisedButton(
            child: const Text(
              'Detail',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Colors.green),
            ),
            onPressed: () {
              showDialog<String>(
                context: context,
                // ignore: prefer_const_constructors
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('Sign Out of App?'),
                  content: const Text(
                      'leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing ',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.justify),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context, 'Cancel');
                        child:
                        const Text('Cancel');
                      },
                      child: Text('Ok'),
                    )
                  ],
                ),
              );
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}
