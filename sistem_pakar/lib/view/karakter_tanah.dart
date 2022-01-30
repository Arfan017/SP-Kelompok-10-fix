import 'package:sistem_pakar/components/singleCard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KarakterLahan extends StatefulWidget {
  const KarakterLahan({Key? key}) : super(key: key);

  @override
  _KarakterLahanState createState() => _KarakterLahanState();
}

class _KarakterLahanState extends State<KarakterLahan> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: Container(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                child: Container(
                  width: double.infinity,
                  height: 80,
                  decoration: const BoxDecoration(
                    color: Color(0xFFCBEE60),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(30),
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        'Karakter Lahan',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 580,
              padding: const EdgeInsets.all(10),
              child: ListView(
                // shrinkWrap: true,
                children: [
                  BuilCard("Tanah Lempung Berpasir",
                      "Tanah lempung berpasir didominasi oleh partikel pasir, tetapi cukup mengandung tanah liat dan sedimen untuk menyediakan beberapa struktur dan kesuburan\n\nJenis tanah ini cocok untuk:\n1. Tanaman buah Pohon kelapa.\n2. Buah naga.\n3. Pohon kurma.\n4. Singkong.\n5. Pohon mangga"),
                  BuilCard("Tanah Aluvial?",
                      "Aluvial merupakan jenis tanah yang terbentuk karena hasil endapan. Endapan yang dimaksud adalah endapan dari sungai, danau, atau juga dari air hujan, Keunggulan dari tanah aluvial adalah kualitas mineral yang ada di dalamnya. Perlu diperhatikan, mineral merupakan salah satu sumber penghidupan bagi tumbuhan. \n\nJenis tanah ini cocok untuk:\n1. Tanaman Padi.\n2. Pohon Tebuh.\n3. Pohon kelapa"),
                  BuilCard("Intensitas Cahaya",
                      "Cahaya merupakan faktor mutlak yang diperlukan tumbuhan untuk melakukan proses fotosintesis. Pada tanaman semakin banyak cahaya yang di peroleh dari lingkungan akan menyebabkan terhambatnya pertumbuhan dari tanaman itu sendiri karena cahaya akan merusak kerja dari hormon pertumbuhan (auksin) "),
                  BuilCard("Suhu",
                      "Suhu memiliki pengaruh penting terhadap pertumbuhan dan perkembangan tanaman, Suhu tinggi pada tanaman dapat merusakkan enzim sehingga metabolisme tidak berjalan baik. Sedangkan, suhu rendah pun menyebabkan enzim tidak aktif dan metabolisme terhenti."),
                  BuilCard("Drainase Pertanian",
                      "Drainase pertanian adalah reklamasi (pembukaan) lahan dan pengawetan tanah untuk pertanian, menaikkan produktivitas tanaman dan produktivitas lahan (menaikkan intensitas tanam dan memungkinkan diversifikasi tanamanan) serta mengurangi ongkos."),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Card BuilCard(String tittle, String detail) {
    return Card(
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: const Color(0xFFF5F5F5),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: 150,
        height: 270,
        decoration: const BoxDecoration(
          color: Color(0xFFEEEEEE),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              flex: 9,
              child: Image.asset(
                'assets/images/TanahTanamam.jpg',
                width: double.infinity,
                height: 150,
                fit: BoxFit.fill,
              ),
            ),
            Expanded(
              flex: 8,
              child: Container(
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 10),
                      child: Text(
                        tittle,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 5, 0, 5),
                      child: Text(
                        'Adalah',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
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
                              title: Text(tittle),
                              content: Text(detail,
                                  //'leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing ',
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
