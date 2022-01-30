import 'package:sistem_pakar/Nav/bottomnav.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFA7D676), Color(0xFFF9E2AE)],
            stops: [0, 1],
            begin: AlignmentDirectional(1, -1),
            end: AlignmentDirectional(-1, 1),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/sprout.png',
              width: 150,
              height: 150,
              fit: BoxFit.fitHeight,
            ),
            const Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
              child: Text(
                'Sistem Pakar',
                style: TextStyle(
                  fontFamily: 'Lexend Deca',
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 100),
              child: Text(
                'PENENTUAN KESESUAIAN\nLAHAN PERTANIAN UNTUK PEMBUDIDAYAAN TANAMAN \nBUAH BUAHAN',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Lexend Deca',
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            ButtonTheme(
              minWidth: 130.0,
              height: 40.0,
              // ignore: deprecated_member_use
              child: RaisedButton(
                color: const Color(0xFFA7D676),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return BotNav();
                      },
                    ),
                  );
                },
                child: const Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}