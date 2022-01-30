import 'dart:ui';
import 'package:flutter/material.dart';

class AboutPakarWidget extends StatefulWidget {
  const AboutPakarWidget({Key? key}) : super(key: key);

  @override
  _AboutPakarWidgetState createState() => _AboutPakarWidgetState();
}

class _AboutPakarWidgetState extends State<AboutPakarWidget> {
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
              colors: [Color(0xFFF9E2AE), Color(0xFFA7D676)],
              stops: [0, 1],
              begin: AlignmentDirectional(1, -0.98),
              end: AlignmentDirectional(-1, 0.98),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const Material(
                color: Colors.transparent,
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(30),
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                child: Material(
                  color: Colors.transparent,
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    width: 200,
                    height: 230,
                    decoration: BoxDecoration(
                      color: const Color(0xFFEEEEEE),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.asset(
                          'assets/images/Pakar.jpeg',
                        ).image,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Container(
                height: 328,
                child:
                ListView(
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 195,
                          decoration: BoxDecoration(
                            color: Color(0xFFF9E2AE),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 5),
                                      child: Text(
                                        'Nama ',
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 15),
                                      child: Text(
                                        'Riwayat Pendidikan',
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ),
                                    Text(
                                      'Ijazah',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 0, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 5),
                                        child: Text(
                                          'Mira Hermawati Soekamto ',
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ),
                                      Text(
                                        'S1: Universitas Papua',
                                        style: TextStyle(fontSize: 14),
                                      ),
                                      Text(
                                        'S2: Universitas Hasanuddin',
                                        style: TextStyle(fontSize: 14),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 5),
                                        width: 172,
                                        child: Image.asset(
                                            'assets/images/IJAZAH_S2_MIRA_HERAWATI.jpg',
                                            fit: BoxFit.fill,
                                            height: 118),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 10),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 265,
                          decoration: BoxDecoration(
                            color: Color(0xFFF9E2AE),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            child: Column(
                              children: [
                                Text(
                                    "Riwayat Singkat",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  Container(
                                    height: 5,
                                  ),
                                  Text(
                                      "Mira Hermawati Soekamto, Tempat tanggal lahir beliau, Sorong, 4 April 1979. Beliau memiliki profesi sebagai Seorang Dosen, Beliau seorang dosen dari jurusan Agroteknologi, fakultas Pertanian, di UMS(Univesitas Muhammadiyah Sorong).Beliau telah mengajar kurang lebih 18thn, mulai dari thn 2004 hingga sekarang(2022) di UM Sorong.",
                                      textAlign: TextAlign.center),
                                  Container(
                                    height: 5,
                                  ),
                                  Text(
                                      "Beliau memiliki banyak ilmu terutama dalam bidang pertanian, salah satunya mengenai jenis/karakteristik lahan yang cocok untuk tanaman buah mangga. Selain memilik ilmu yang baik, beliau juga memiliki sifat yang sangat baik dan ramah terhadap mahasiswa",
                                      textAlign: TextAlign.center),
                              ],
                            )
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
