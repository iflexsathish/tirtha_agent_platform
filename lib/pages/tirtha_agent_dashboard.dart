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
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
              //Header Row
                Row(
              children: [
                Center(
                  child: Container(
                      color: Colors.deepPurple.shade300,
                      width: 100.0,
                      height: 125.0,
                      padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget> [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/images/gopu.jpg',
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
                Container(
                  color: Colors.deepPurple.shade300,
                  width: 180.0,
                  height: 125.0,
                  //alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.fromLTRB(0, 40 , 10, 10),
                  child: Column(
                      children: <Widget> [
                        Text("Agent Platform",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "verdana" ,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            )),
                        Text("version 2.3",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "verdana" ,
                              fontSize: 12.0,
                              fontWeight: FontWeight.normal,
                            )
                        ),
                      ]
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
                                  'assets/images/Agent1.jpg',
                                  fit: BoxFit.cover,
                                  height: 60,
                                  width: 60,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 2, 0, 0),
                              child: Text("Welcome, Rajeev",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "verdana" ,
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.bold,
                                  )),
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
                      //color: Colors.deepPurple.shade300,
                      //width: 180.0,
                      height: 50.0,
                      //alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.fromLTRB(10, 15 , 0, 0),
                      child: Column(
                          children: <Widget> [
                            Text("SUBMITTED",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.blue.shade600,
                                  fontFamily: "verdana" ,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                )),
                          ]
                      ),
                    ),
                  ],
                ),
                // Submitted Tirtha Row
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
                        child: Container(
                          margin: EdgeInsets.all(5.0),
                          height: 150.0,
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(5, 35, 0, 0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(40),
                                      child: Image.asset(
                                        'assets/images/Kapilatheertham1.jpg',
                                        fit: BoxFit.cover,
                                        height: 80,
                                        width: 80,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 30, 15, 0),
                                    child: Text("Kapila Threetham",
                                        style: TextStyle(
                                          color: Colors.deepPurple.shade300,
                                          fontFamily: "verdana" ,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text("Tirumala, AP",
                                        style: TextStyle(
                                          color: Colors.deepPurple.shade300,
                                          fontFamily: "verdana" ,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                                    child: Row(
                                      children: [
                                        Text("Status :",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Text("LISTED",
                                            style: TextStyle(
                                              color: Colors.green.shade600,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 3, 0, 0),
                                    child: Row(
                                      children: [
                                        Text("No. of Visits :",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Text("255",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.normal,
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.asset(
                                        'assets/images/raggreen.png',
                                        fit: BoxFit.cover,
                                        height: 15,
                                        width: 15,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          margin: EdgeInsets.all(5.0),
                          height: 150.0,
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(5, 35, 0, 0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(40),
                                      child: Image.asset(
                                        'assets/images/Kapilatheertham1.jpg',
                                        fit: BoxFit.cover,
                                        height: 80,
                                        width: 80,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 30, 15, 0),
                                    child: Text("Kapila Threetham",
                                        style: TextStyle(
                                          color: Colors.deepPurple.shade300,
                                          fontFamily: "verdana" ,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text("Tirumala, AP",
                                        style: TextStyle(
                                          color: Colors.deepPurple.shade300,
                                          fontFamily: "verdana" ,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                                    child: Row(
                                      children: [
                                        Text("Status :",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Text("LISTED",
                                            style: TextStyle(
                                              color: Colors.green.shade600,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 3, 0, 0),
                                    child: Row(
                                      children: [
                                        Text("No. of Visits :",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Text("255",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.normal,
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.asset(
                                        'assets/images/raggreen.png',
                                        fit: BoxFit.cover,
                                        height: 15,
                                        width: 15,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          margin: EdgeInsets.all(5.0),
                          height: 150.0,
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(5, 35, 0, 0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(40),
                                      child: Image.asset(
                                        'assets/images/Kapilatheertham1.jpg',
                                        fit: BoxFit.cover,
                                        height: 80,
                                        width: 80,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 30, 15, 0),
                                    child: Text("Kapila Threetham",
                                        style: TextStyle(
                                          color: Colors.deepPurple.shade300,
                                          fontFamily: "verdana" ,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text("Tirumala, AP",
                                        style: TextStyle(
                                          color: Colors.deepPurple.shade300,
                                          fontFamily: "verdana" ,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                                    child: Row(
                                      children: [
                                        Text("Status :",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Text("LISTED",
                                            style: TextStyle(
                                              color: Colors.green.shade600,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 3, 0, 0),
                                    child: Row(
                                      children: [
                                        Text("No. of Visits :",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Text("255",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.normal,
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.asset(
                                        'assets/images/raggreen.png',
                                        fit: BoxFit.cover,
                                        height: 15,
                                        width: 15,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          margin: EdgeInsets.all(5.0),
                          height: 150.0,
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(5, 35, 0, 0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(40),
                                      child: Image.asset(
                                        'assets/images/Kapilatheertham1.jpg',
                                        fit: BoxFit.cover,
                                        height: 80,
                                        width: 80,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 30, 15, 0),
                                    child: Text("Kapila Threetham",
                                        style: TextStyle(
                                          color: Colors.deepPurple.shade300,
                                          fontFamily: "verdana" ,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text("Tirumala, AP",
                                        style: TextStyle(
                                          color: Colors.deepPurple.shade300,
                                          fontFamily: "verdana" ,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                                    child: Row(
                                      children: [
                                        Text("Status :",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Text("LISTED",
                                            style: TextStyle(
                                              color: Colors.green.shade600,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 3, 0, 0),
                                    child: Row(
                                      children: [
                                        Text("No. of Visits :",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Text("255",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.normal,
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.asset(
                                        'assets/images/raggreen.png',
                                        fit: BoxFit.cover,
                                        height: 15,
                                        width: 15,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          margin: EdgeInsets.all(5.0),
                          height: 150.0,
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(5, 35, 0, 0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(40),
                                      child: Image.asset(
                                        'assets/images/Kapilatheertham1.jpg',
                                        fit: BoxFit.cover,
                                        height: 80,
                                        width: 80,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 30, 15, 0),
                                    child: Text("Kapila Threetham",
                                        style: TextStyle(
                                          color: Colors.deepPurple.shade300,
                                          fontFamily: "verdana" ,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text("Tirumala, AP",
                                        style: TextStyle(
                                          color: Colors.deepPurple.shade300,
                                          fontFamily: "verdana" ,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                                    child: Row(
                                      children: [
                                        Text("Status :",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Text("LISTED",
                                            style: TextStyle(
                                              color: Colors.green.shade600,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 3, 0, 0),
                                    child: Row(
                                      children: [
                                        Text("No. of Visits :",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Text("255",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.normal,
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.asset(
                                        'assets/images/raggreen.png',
                                        fit: BoxFit.cover,
                                        height: 15,
                                        width: 15,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          margin: EdgeInsets.all(5.0),
                          height: 150.0,
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(5, 35, 0, 0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(40),
                                      child: Image.asset(
                                        'assets/images/Kapilatheertham1.jpg',
                                        fit: BoxFit.cover,
                                        height: 80,
                                        width: 80,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 30, 15, 0),
                                    child: Text("Kapila Threetham",
                                        style: TextStyle(
                                          color: Colors.deepPurple.shade300,
                                          fontFamily: "verdana" ,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text("Tirumala, AP",
                                        style: TextStyle(
                                          color: Colors.deepPurple.shade300,
                                          fontFamily: "verdana" ,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                                    child: Row(
                                      children: [
                                        Text("Status :",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Text("LISTED",
                                            style: TextStyle(
                                              color: Colors.green.shade600,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 3, 0, 0),
                                    child: Row(
                                      children: [
                                        Text("No. of Visits :",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Text("255",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.normal,
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.asset(
                                        'assets/images/raggreen.png',
                                        fit: BoxFit.cover,
                                        height: 15,
                                        width: 15,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          margin: EdgeInsets.all(5.0),
                          height: 150.0,
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(5, 35, 0, 0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(40),
                                      child: Image.asset(
                                        'assets/images/Kapilatheertham1.jpg',
                                        fit: BoxFit.cover,
                                        height: 80,
                                        width: 80,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 30, 15, 0),
                                    child: Text("Kapila Threetham",
                                        style: TextStyle(
                                          color: Colors.deepPurple.shade300,
                                          fontFamily: "verdana" ,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text("Tirumala, AP",
                                        style: TextStyle(
                                          color: Colors.deepPurple.shade300,
                                          fontFamily: "verdana" ,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                                    child: Row(
                                      children: [
                                        Text("Status :",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Text("LISTED",
                                            style: TextStyle(
                                              color: Colors.green.shade600,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 3, 0, 0),
                                    child: Row(
                                      children: [
                                        Text("No. of Visits :",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Text("255",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.normal,
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.asset(
                                        'assets/images/raggreen.png',
                                        fit: BoxFit.cover,
                                        height: 15,
                                        width: 15,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          margin: EdgeInsets.all(5.0),
                          height: 150.0,
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(5, 35, 0, 0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(40),
                                      child: Image.asset(
                                        'assets/images/Kapilatheertham1.jpg',
                                        fit: BoxFit.cover,
                                        height: 80,
                                        width: 80,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 30, 15, 0),
                                    child: Text("Kapila Threetham",
                                        style: TextStyle(
                                          color: Colors.deepPurple.shade300,
                                          fontFamily: "verdana" ,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text("Tirumala, AP",
                                        style: TextStyle(
                                          color: Colors.deepPurple.shade300,
                                          fontFamily: "verdana" ,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                                    child: Row(
                                      children: [
                                        Text("Status :",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Text("LISTED",
                                            style: TextStyle(
                                              color: Colors.green.shade600,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 3, 0, 0),
                                    child: Row(
                                      children: [
                                        Text("No. of Visits :",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Text("255",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.normal,
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.asset(
                                        'assets/images/raggreen.png',
                                        fit: BoxFit.cover,
                                        height: 15,
                                        width: 15,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                    ],

                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Container(
                      //color: Colors.deepPurple.shade300,
                      //width: 180.0,
                      height: 50.0,
                      //alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.fromLTRB(10, 15 , 0, 0),
                      child: Column(
                          children: <Widget> [
                              Text("WORK IN PROGRESS",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontFamily: "verdana" ,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                )),
                          ]
                      ),
                    ),
                  ],
                ),
                // Submitted Tirtha Row
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
                        child: Container(
                          margin: EdgeInsets.all(5.0),
                          height: 150.0,
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(5, 35, 0, 0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(40),
                                      child: Image.asset(
                                        'assets/images/Kapilatheertham1.jpg',
                                        fit: BoxFit.cover,
                                        height: 80,
                                        width: 80,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 30, 15, 0),
                                    child: Text("Kapila Threetham",
                                        style: TextStyle(
                                          color: Colors.deepPurple.shade300,
                                          fontFamily: "verdana" ,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text("Tirumala, AP",
                                        style: TextStyle(
                                          color: Colors.deepPurple.shade300,
                                          fontFamily: "verdana" ,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                                    child: Row(
                                      children: [
                                        Text("Status :",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Text("LISTED",
                                            style: TextStyle(
                                              color: Colors.green.shade600,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 3, 0, 0),
                                    child: Row(
                                      children: [
                                        Text("No. of Visits :",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Text("255",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.normal,
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.asset(
                                        'assets/images/raggreen.png',
                                        fit: BoxFit.cover,
                                        height: 15,
                                        width: 15,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          margin: EdgeInsets.all(5.0),
                          height: 150.0,
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(5, 35, 0, 0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(40),
                                      child: Image.asset(
                                        'assets/images/Kapilatheertham1.jpg',
                                        fit: BoxFit.cover,
                                        height: 80,
                                        width: 80,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 30, 15, 0),
                                    child: Text("Kapila Threetham",
                                        style: TextStyle(
                                          color: Colors.deepPurple.shade300,
                                          fontFamily: "verdana" ,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text("Tirumala, AP",
                                        style: TextStyle(
                                          color: Colors.deepPurple.shade300,
                                          fontFamily: "verdana" ,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                                    child: Row(
                                      children: [
                                        Text("Status :",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Text("LISTED",
                                            style: TextStyle(
                                              color: Colors.green.shade600,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 3, 0, 0),
                                    child: Row(
                                      children: [
                                        Text("No. of Visits :",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Text("255",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.normal,
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.asset(
                                        'assets/images/raggreen.png',
                                        fit: BoxFit.cover,
                                        height: 15,
                                        width: 15,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          margin: EdgeInsets.all(5.0),
                          height: 150.0,
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(5, 35, 0, 0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(40),
                                      child: Image.asset(
                                        'assets/images/Kapilatheertham1.jpg',
                                        fit: BoxFit.cover,
                                        height: 80,
                                        width: 80,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 30, 15, 0),
                                    child: Text("Kapila Threetham",
                                        style: TextStyle(
                                          color: Colors.deepPurple.shade300,
                                          fontFamily: "verdana" ,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text("Tirumala, AP",
                                        style: TextStyle(
                                          color: Colors.deepPurple.shade300,
                                          fontFamily: "verdana" ,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                                    child: Row(
                                      children: [
                                        Text("Status :",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Text("LISTED",
                                            style: TextStyle(
                                              color: Colors.green.shade600,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 3, 0, 0),
                                    child: Row(
                                      children: [
                                        Text("No. of Visits :",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Text("255",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.normal,
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.asset(
                                        'assets/images/raggreen.png',
                                        fit: BoxFit.cover,
                                        height: 15,
                                        width: 15,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          margin: EdgeInsets.all(5.0),
                          height: 150.0,
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(5, 35, 0, 0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(40),
                                      child: Image.asset(
                                        'assets/images/Kapilatheertham1.jpg',
                                        fit: BoxFit.cover,
                                        height: 80,
                                        width: 80,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 30, 15, 0),
                                    child: Text("Kapila Threetham",
                                        style: TextStyle(
                                          color: Colors.deepPurple.shade300,
                                          fontFamily: "verdana" ,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text("Tirumala, AP",
                                        style: TextStyle(
                                          color: Colors.deepPurple.shade300,
                                          fontFamily: "verdana" ,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                                    child: Row(
                                      children: [
                                        Text("Status :",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Text("LISTED",
                                            style: TextStyle(
                                              color: Colors.green.shade600,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 3, 0, 0),
                                    child: Row(
                                      children: [
                                        Text("No. of Visits :",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Text("255",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.normal,
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.asset(
                                        'assets/images/raggreen.png',
                                        fit: BoxFit.cover,
                                        height: 15,
                                        width: 15,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          margin: EdgeInsets.all(5.0),
                          height: 150.0,
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(5, 35, 0, 0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(40),
                                      child: Image.asset(
                                        'assets/images/Kapilatheertham1.jpg',
                                        fit: BoxFit.cover,
                                        height: 80,
                                        width: 80,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 30, 15, 0),
                                    child: Text("Kapila Threetham",
                                        style: TextStyle(
                                          color: Colors.deepPurple.shade300,
                                          fontFamily: "verdana" ,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text("Tirumala, AP",
                                        style: TextStyle(
                                          color: Colors.deepPurple.shade300,
                                          fontFamily: "verdana" ,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                                    child: Row(
                                      children: [
                                        Text("Status :",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Text("LISTED",
                                            style: TextStyle(
                                              color: Colors.green.shade600,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 3, 0, 0),
                                    child: Row(
                                      children: [
                                        Text("No. of Visits :",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Text("255",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.normal,
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.asset(
                                        'assets/images/raggreen.png',
                                        fit: BoxFit.cover,
                                        height: 15,
                                        width: 15,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          margin: EdgeInsets.all(5.0),
                          height: 150.0,
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(5, 35, 0, 0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(40),
                                      child: Image.asset(
                                        'assets/images/Kapilatheertham1.jpg',
                                        fit: BoxFit.cover,
                                        height: 80,
                                        width: 80,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 30, 15, 0),
                                    child: Text("Kapila Threetham",
                                        style: TextStyle(
                                          color: Colors.deepPurple.shade300,
                                          fontFamily: "verdana" ,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text("Tirumala, AP",
                                        style: TextStyle(
                                          color: Colors.deepPurple.shade300,
                                          fontFamily: "verdana" ,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                                    child: Row(
                                      children: [
                                        Text("Status :",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Text("LISTED",
                                            style: TextStyle(
                                              color: Colors.green.shade600,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 3, 0, 0),
                                    child: Row(
                                      children: [
                                        Text("No. of Visits :",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Text("255",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.normal,
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.asset(
                                        'assets/images/raggreen.png',
                                        fit: BoxFit.cover,
                                        height: 15,
                                        width: 15,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          margin: EdgeInsets.all(5.0),
                          height: 150.0,
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(5, 35, 0, 0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(40),
                                      child: Image.asset(
                                        'assets/images/Kapilatheertham1.jpg',
                                        fit: BoxFit.cover,
                                        height: 80,
                                        width: 80,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 30, 15, 0),
                                    child: Text("Kapila Threetham",
                                        style: TextStyle(
                                          color: Colors.deepPurple.shade300,
                                          fontFamily: "verdana" ,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text("Tirumala, AP",
                                        style: TextStyle(
                                          color: Colors.deepPurple.shade300,
                                          fontFamily: "verdana" ,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                                    child: Row(
                                      children: [
                                        Text("Status :",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Text("LISTED",
                                            style: TextStyle(
                                              color: Colors.green.shade600,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 3, 0, 0),
                                    child: Row(
                                      children: [
                                        Text("No. of Visits :",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Text("255",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.normal,
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.asset(
                                        'assets/images/raggreen.png',
                                        fit: BoxFit.cover,
                                        height: 15,
                                        width: 15,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          margin: EdgeInsets.all(5.0),
                          height: 150.0,
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(5, 35, 0, 0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(40),
                                      child: Image.asset(
                                        'assets/images/Kapilatheertham1.jpg',
                                        fit: BoxFit.cover,
                                        height: 80,
                                        width: 80,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 30, 15, 0),
                                    child: Text("Kapila Threetham",
                                        style: TextStyle(
                                          color: Colors.deepPurple.shade300,
                                          fontFamily: "verdana" ,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text("Tirumala, AP",
                                        style: TextStyle(
                                          color: Colors.deepPurple.shade300,
                                          fontFamily: "verdana" ,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                                    child: Row(
                                      children: [
                                        Text("Status :",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Text("LISTED",
                                            style: TextStyle(
                                              color: Colors.green.shade600,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 3, 0, 0),
                                    child: Row(
                                      children: [
                                        Text("No. of Visits :",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Text("255",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.normal,
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.asset(
                                        'assets/images/raggreen.png',
                                        fit: BoxFit.cover,
                                        height: 15,
                                        width: 15,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],

                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Container(
                        color: Colors.grey.shade200,
                        width: 1260.0,
                        height: 125.0,

                        // margin: EdgeInsets.all(100.0),
                        child: Container(
                          margin: EdgeInsets.all(10.0),
                          child: Text("Actions",
                              style: TextStyle(
                                color: Colors.black54,
                                fontFamily: "verdana" ,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              )),
                        )
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


