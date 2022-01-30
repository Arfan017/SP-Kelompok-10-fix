import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Container(
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
              Container(
                margin: EdgeInsets.fromLTRB(20, 10, 10, 10),
                width: double.infinity,
                height: 230,
                decoration: BoxDecoration(
                  color: const Color(0xFFEEEEEE),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(
                      'assets/images/organic-flat-farming-profession-illustration.jpg',
                    ).image,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                // child: Row(
                  //   mainAxisSize: MainAxisSize.max,
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   crossAxisAlignment: CrossAxisAlignment.center,
                  //   children: const [
                  //     Text(
                  //       'Home',
                  //       textAlign: TextAlign.start,
                  //       style: TextStyle(
                  //         fontFamily: 'Poppins',
                  //         color: Colors.white,
                  //         fontSize: 20,
                  //         fontWeight: FontWeight.bold,
                  //       ),
                  //     ),
                  //   ],
                  // ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 10, 10, 10),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFFA7D676),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.all(5),
                  width: double.infinity,
                  child: const Text(
                      "Indonesia merupakan negara agraris yang menghasilkan beraneka ragam hasil produksi pertanian dan perkebunan, salah satunya yaitu hasil produksi pertanian adalah tanaman buah-buahan. Usaha pembudidayaan tanaman buah sering mengalami hambatan, salah satunya adalah dalam menentukan kesesuaian lahan pertanian untuk penanaman tanaman buah tertentu. Terbatasnya ahli menyebabkan sulitnya menentukan tingkat kecocokan tanaman tersebut di suatu daerah. Untuk itu dibutuhkan sebuah sistem yang dapat meniru kemampuan seorang ahli dalam bidangnya",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.center),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFFEBAE56),
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.all(5),
                        width: double.infinity,
                        child: const Text(
                            "Mempermudah pencarian dan menentukan kesesuaian lahan untuk pembudidayaan tanaman buah-buahan",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                            textAlign: TextAlign.center),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFFEBAE56),
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.all(5),
                        width: double.infinity,
                        child: const Text(
                            "Mengetahui persyaratan lahan dan lokasi yang diperlukan untuk suatu tanaman tertentu",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                            textAlign: TextAlign.center),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFFEBAE56),
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.all(5),
                        width: double.infinity,
                        child: const Text(
                            "Meminimalisasi ketidak sesuaian antara jenis tanaman dengan karakteristik dan kualitas lahan",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                            textAlign: TextAlign.center),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
