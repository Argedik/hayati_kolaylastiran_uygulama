import 'package:flutter/material.dart';

class CustomSize1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A2647),
      body: Center(
        child: SizedBox(
          width: 360.0,
          height: 640.0,
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment(-0.97, -0.64),
                width: 360.0,
                height: 80.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                    colors: [
                      const Color(0xFFFF8800),
                      const Color(0xFFD70000),
                      const Color(0xFFFF0101)
                    ],
                    stops: [0.0, 0.658, 1.0],
                  ),
                  border: Border.all(
                    width: 1.0,
                    color: const Color(0xFF707070),
                  ),
                ),
                child: Text(
                  'Hayatı',
                  style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 44.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Spacer(flex: 14),
// Group: Group 1

              SizedBox(
                width: 316.0,
                height: 431.0,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      right: 0,
                      child: Container(
                        width: 268.0,
                        height: 125.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14.0),
                          color: const Color(0xFFDF1313),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 7.0,
                      child: Container(
                        width: 108.0,
                        height: 111.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(''),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: Container(
                        // [Repeat Grid 1] Repeat grid aren't supported.
                        width: 268.0,
                        height: 431.0,
                        color: Colors.red,
                      ),
                    ),
                    Positioned(
                      top: 7.0,
                      child: Container(
                        width: 108.0,
                        height: 111.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(''),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 9.0,
                      top: 162.0,
                      child: Container(
                        width: 90.0,
                        height: 90.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(''),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 9.0,
                      bottom: 34.0,
                      child: Container(
                        width: 90.0,
                        height: 90.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(''),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(flex: 115),
            ],
          ),
        ),
      ),
    );
  }
}
