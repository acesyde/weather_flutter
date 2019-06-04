import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {},
            )),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(top: 10, bottom: 10, left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text('Saint Petersburg',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold)),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                    ),
                    const Text('Leningrad region, Russia',
                        style: TextStyle(fontSize: 14, color: Colors.grey))
                  ],
                ),
              ),
              Expanded(
                child: GridView.builder(
                    itemCount: 6,
                    padding: EdgeInsets.all(5),
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        semanticContainer: true,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 150,
                              color: Colors.teal,
                              child: Image.network(
                                  'https://image.shutterstock.com/z/stock-vector-vector-night-city-illustration-with-neon-glow-and-vivid-colors-397469743.jpg',
                                  fit: BoxFit.fill),
                            ),
                            Stack(children: <Widget>[
                              Container(
                                height: 70,
                                color: Color(0xFF56B199),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text('12',
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.white)),
                                          Text('west wind',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white)),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text('91%',
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.white)),
                                          Text('humidity',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white)),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Positioned(
                                top: -25,
                                right: 0,
                                child: FloatingActionButton(
                                  onPressed: () {},
                                  child: Icon(Icons.add),
                                  mini: true,
                                ),
                              )
                            ]),
                            Container(
                              height: 70,
                              color: Colors.white,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('22.5°', style: TextStyle(fontSize: 24)),
                                  Text('New york',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey,
                                          fontStyle: FontStyle.italic)),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.6,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 10)),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.search),
          foregroundColor: Colors.white,
          backgroundColor: Colors.green,
        ),
      ),
    );
  }
}
