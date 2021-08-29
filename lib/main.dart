import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hayati_kolaylastiran_uygulama/xd/CustomSize1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> _resimler = [
    'assets/pictures/dunya.png',
    'assets/pictures/kirmizidunya.png',
    'assets/pictures/mavidunya.png',
  ];
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    String dunya = "assets/pictures/dunya.png";
    double genislik = MediaQuery.of(context).size.width;
    double yukseklik = MediaQuery.of(context).size.height;
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CustomSize1()),
            );
          },
          child: const Icon(Icons.navigation),
          backgroundColor: Colors.green,
        ),
        backgroundColor: Color(0xff154360),
        body: Column(
          children: [
            Container(
              height: yukseklik * 0.1,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.95, -1.0),
                  end: Alignment(-1.0, 1.0),
                  stops: [0.0, 0.8, 1.0],
                  //colors: _renkler[index % 6],
                  colors: [
                    Color(0xffE67E22),
                    Color(0xffD32626),
                    Color(0xffD32626)
                  ],
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 8),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
            Expanded(
              // child: Column(
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.all(15.0),
              //       child: ListTile(
              //         title: Text("deneme"),
              //         tileColor: Colors.blueAccent,
              //         leading: Image.asset("assets/pictures/dunya.png"),
              //       ),
              //     ),
              //     ListTile(tileColor: Colors.blueAccent),
              //     ListTile(tileColor: Colors.blueAccent),
              //   ],
              // ),

              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) => Padding(
                  padding: const EdgeInsets.only(
                      bottom: 30, left: 30, right: 30, top: 15),
                  child: SizedBox(
                    width: 310.0,
                    height: 125.0,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          right: 0,
                          child: Container(
                            width: 300.0,
                            height: 125.0,
                            child: Container(
                              height: 200,
                              width: 100,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Text(
                                      "Parasal Konular",
                                      style: TextStyle(fontSize: 24),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Text(
                                      "Sosyal Hayat",
                                      style: TextStyle(fontSize: 24),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          height: 5,
                                          width: 15,
                                          color: Colors.blueAccent,
                                        ),
                                      ),
                                      height: 50,
                                      width: 100,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14.0),
                              color: const Color(0xFFDF1313),
                            ),
                          ),
                        ),
                        Container(
                          child: Image.asset(_resimler[index]),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
