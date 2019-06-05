import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Weather Forecast',
              style: TextStyle(
                  fontFamily: 'NexaBold',
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Column(
          children: <Widget>[
            Icon(Icons.wb_sunny, size: 50, color: Colors.orange),
            Text('31,9°',
                style: TextStyle(
                    fontFamily: 'NexaBold', fontSize: 50, color: Colors.black)),
            Text('Tbilisi, Georgia',
                style: TextStyle(
                    fontFamily: 'NexaBold', fontSize: 25, color: Colors.grey)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('Today',
                    style: TextStyle(
                        fontFamily: 'NexaBold',
                        fontSize: 18,
                        color: Colors.black)),
                Text('Tomorrow',
                    style: TextStyle(
                        fontFamily: 'NexaBold',
                        fontSize: 18,
                        color: Colors.grey)),
                Text('After',
                    style: TextStyle(
                        fontFamily: 'NexaBold',
                        fontSize: 18,
                        color: Colors.grey))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.orange[800],
                            Colors.deepOrange[900]
                          ])),
                  child: Column(
                    children: <Widget>[
                      Text('18:00',
                          style: TextStyle(
                              fontFamily: 'NexaBold',
                              fontSize: 20,
                              color: Colors.white)),
                      Icon(Feather.getIconData("cloud-rain"),
                          color: Colors.white),
                      Text('12 °',
                          style: TextStyle(
                              fontFamily: 'NexaBold',
                              fontSize: 20,
                              color: Colors.white)),
                    ],
                  ),
                )
              ],
            ),
            Text('Additional Info',
                style: TextStyle(
                    fontFamily: 'NexaBold', fontSize: 20, color: Colors.black)),
            Row(
              children: <Widget>[
                Text('Wind',
                style: TextStyle(
                    fontFamily: 'NexaBold', fontSize: 15, color: Colors.black)),
                    Text('12 m/h',
                style: TextStyle(
                    fontFamily: 'NexaBold', fontSize: 15, color: Colors.grey))
              ],
            )
          ],
        ),
      ),
    );
  }
}
