import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.white, Color(0xFFE1E1E1)])),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 150.0,
                        height: 150.0,
                        decoration: BoxDecoration(
                            color: Color(0xFF5470ED),
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 2.0,
                                  offset: Offset(0.0, 3.0),
                                  color: Colors.grey)
                            ]),
                        child: Icon(
                          Icons.wb_sunny,
                          color: Colors.white,
                          size: 100.0,
                          textDirection: TextDirection.ltr,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10.0)),
                      Text('Weather Flutter',
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
