import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class tirthaAgentDashBoard extends StatefulWidget {
  @override
  _tirthaAgentDashBoardState createState() => _tirthaAgentDashBoardState();
}

class _tirthaAgentDashBoardState extends State<tirthaAgentDashBoard> {

  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
            Row(
            children: [
              Center(
                child: Container(
                    color: Colors.deepPurple.shade300,
                    width: 100.0,
                    height: 125.0,
                child: Container(
                  width: 100.0,
                  height: 75.0,
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget> [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/gopu.jpg',
                            fit: BoxFit.cover,
                            height: 60,
                            width: 60,
                          ),
                        ),
                      ),
                      Text("Tirtha",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Calibiri" ,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          )),
                    ]
                  ),
                ),
                ),
              ),
              Center(
                child: Container(
                  color: Colors.deepPurple.shade300,
                  width: 180.0,
                  height: 125.0,
                  alignment: Alignment.center,
                  child: Container(
                    width: 180.0,
                    height: 125.0,
                    alignment: Alignment.center,
                     padding: const EdgeInsets.fromLTRB(0, 40 , 10, 10),
                    child: Column(
                        children: <Widget> [
                          Text("Agent Platform",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Calibiri" ,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              )),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 2, 0, 0),
                            child: SizedBox(
                              child: Text("version 2.3",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Calibiri" ,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.normal,
                                  )),
                            ),
                          ),
                        ]
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  color: Colors.deepPurple.shade300,
                  width: 980.0,
                  height: 125.0,
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 980.0,
                    height: 125.0,
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.all(16),
                    child: Column(
                        children: <Widget> [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset(
                                'assets/Agent1.jpg',
                                fit: BoxFit.cover,
                                height: 60,
                                width: 60,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 2, 0, 0),
                            child: SizedBox(
                              child: Text("Welcome, Rajeev",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Calibiri" ,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.normal,
                                  )),
                            ),
                          ),
                        ]
                    ),
                  ),
                ),
              ),
            ],
            ),
              Row(
                children: [
                  Container(
                      color: Colors.grey.shade200,
                      width: 1260.0,
                      height: 240.0,

                      // margin: EdgeInsets.all(100.0),
                      child: Text("Want to become an agent?",
                          style: TextStyle(
                            color: Colors.black54,
                            fontFamily: "Calibiri" ,
                            fontSize: 14.0,
                            fontWeight: FontWeight.normal,
                          ))
                  ),
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                children: [
                  Container(
                      color: Colors.grey.shade200,
                      width: 1260.0,
                      height: 250.0,
                      // margin: EdgeInsets.all(100.0),
                      child: Text("Want to become an agent?",
                          style: TextStyle(
                            color: Colors.black54,
                            fontFamily: "Calibiri" ,
                            fontSize: 14.0,
                            fontWeight: FontWeight.normal,
                          ))
                  ),
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                children: [
                  Container(
                      color: Colors.grey.shade200,
                      width: 1260.0,
                      height: 110.0,

                      // margin: EdgeInsets.all(100.0),
                      child: Text("Want to become an agent?",
                          style: TextStyle(
                            color: Colors.black54,
                            fontFamily: "Calibiri" ,
                            fontSize: 14.0,
                            fontWeight: FontWeight.normal,
                          ))
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


