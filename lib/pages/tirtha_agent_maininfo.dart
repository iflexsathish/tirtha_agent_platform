import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class tirthaAgentMainInfo extends StatefulWidget {
  @override
  _tirthaAgentMainInfoState createState() => _tirthaAgentMainInfoState();
}

class _tirthaAgentMainInfoState extends State<tirthaAgentMainInfo> {

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
                Container(
                  color: Colors.deepPurple.shade300,
                  width: 680.0,
                  height: 125.0,
                  //alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.fromLTRB(0, 50 , 10, 10),
                  child: Column(
                      children: <Widget> [
                        Text("New Tirtha Onboarding",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "verdana" ,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            )),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text("Tirtha ID : TA0023",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "verdana" ,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            )
                        ),
                      ]
                  ),
                ),
                Center(
                  child: Container(
                    color: Colors.deepPurple.shade300,
                    //width: 980.0,
                    height: 125.0,
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: 300,
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
                    Column(
                      children: [
                        Center(
                          child: Container(
                            //color: Colors.deepPurple.shade300,
                            width: 600.0,
                            height: 50.0,
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.fromLTRB(15, 15 , 0, 0),
                            child: Column(
                                children: <Widget> [
                                  Text("Main Information",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Colors.deepPurple.shade300,
                                        fontFamily: "verdana" ,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ]
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Center(
                          child: Container(
                            //color: Colors.deepPurple.shade300,
                            width: 640.0,
                            height: 50.0,
                            alignment: Alignment.centerRight,
                            padding: const EdgeInsets.fromLTRB(10, 15 , 0, 0),
                            child: Column(
                                children: <Widget> [
                                  Text("Stage 1/10",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Colors.deepPurple.shade300,
                                        fontFamily: "verdana" ,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ]
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      color: Colors.grey.shade200,
                      width: 1260.0,
                      height: 60.0,
                      //alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.fromLTRB(20, 15 , 0, 0),
                      child: Row(
                        children: [
                          Column(
                              children: <Widget> [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Name",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Colors.blue.shade600,
                                        fontFamily: "verdana" ,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                              ]
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Column(
                              children: <Widget> [
                                Container(
                                  width: 500.0,
                                  height: 35.0,
                                  child: TextField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                        contentPadding: const EdgeInsets.only(
                                            left: 10.0, bottom: 8.0, top: 8.0),
                                      ),
                                      style: TextStyle(
                                        //color: Colors.grey,
                                        backgroundColor: Colors.white38,
                                        fontFamily: "verdana" ,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.normal,
                                      )),
                                ),
                              ]
                          ),
                          SizedBox(
                            width: 25.0,
                          ),
                          Column(
                              children: <Widget> [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Location",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Colors.blue.shade600,
                                        fontFamily: "verdana" ,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                              ]
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Column(
                              children: <Widget> [
                                Container(
                                  width: 200.0,
                                  height: 35.0,
                                  child: TextField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                        contentPadding: const EdgeInsets.only(
                                            left: 10.0, bottom: 8.0, top: 8.0),
                                      ),
                                      style: TextStyle(
                                        //color: Colors.grey,
                                        backgroundColor: Colors.white38,
                                        fontFamily: "verdana" ,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.normal,
                                      )),
                                ),
                              ]
                          ),
                        ],
                      ),

                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      color: Colors.grey.shade200,
                      width: 1260.0,
                      height: 60.0,
                      //alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.fromLTRB(20, 15 , 0, 0),
                      child: Row(
                        children: [
                          Column(
                              children: <Widget> [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Address",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Colors.blue.shade600,
                                        fontFamily: "verdana" ,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                              ]
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Column(
                              children: <Widget> [
                                Container(
                                  width: 500.0,
                                  height: 35.0,
                                  child: TextField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                        contentPadding: const EdgeInsets.only(
                                            left: 10.0, bottom: 8.0, top: 8.0),
                                      ),
                                      style: TextStyle(
                                        //color: Colors.grey,
                                        backgroundColor: Colors.white38,
                                        fontFamily: "verdana" ,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.normal,
                                      )),
                                ),
                              ]
                          ),
                          SizedBox(
                            width: 25.0,
                          ),
                          Column(
                              children: <Widget> [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Pincode",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Colors.blue.shade600,
                                        fontFamily: "verdana" ,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                              ]
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Column(
                              children: <Widget> [
                                Container(
                                  width: 200.0,
                                  height: 35.0,
                                  child: TextField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                        contentPadding: const EdgeInsets.only(
                                            left: 10.0, bottom: 8.0, top: 8.0),
                                      ),
                                      style: TextStyle(
                                        //color: Colors.grey,
                                        backgroundColor: Colors.white38,
                                        fontFamily: "verdana" ,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.normal,
                                      )),
                                ),
                              ]
                          ),
                        ],
                      ),

                    ),
                  ],
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Container(
                      color: Colors.grey.shade100,
                      width: 1260.0,
                      height: 195.0,
                      //alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.fromLTRB(20, 15 , 0, 0),
                      child: Column(
                          children: <Widget> [
                            Text("Name",
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
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Container(
                      color: Colors.grey.shade100,
                      width: 1260.0,
                      height: 130.0,
                      //alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.fromLTRB(20, 15 , 0, 0),
                      child: Column(
                          children: <Widget> [
                            Text("Name",
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
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Container(
                        color: Colors.grey.shade100,
                        width: 1260.0,
                        height: 70.0,
                        // margin: EdgeInsets.all(100.0),
                        //alignment: Alignment.center,
                        child: Center(
                          child: Container(
                            color: Colors.grey.shade100,
                            margin: EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Material(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.grey.shade100,
                                  //elevation: 5.0,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 345.0,
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                        child: MaterialButton(
                                          onPressed: () async {
                                            dynamic result = await Navigator.pushNamed(context, '/tirthaAgentMainInfo');
                                          },
                                          minWidth: 125.0,
                                          height: 50.0,
                                          color: const Color(0x7EE31A1A).withOpacity(0.5),
                                          child: Text(
                                            "Prev",
                                            style: TextStyle(
                                              fontSize: 18.0,
                                              fontFamily: "verdana",
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 50.0,
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                        child: MaterialButton(
                                          onPressed: () async {
                                            dynamic result = await Navigator.pushNamed(context, '/tirthaAgentMainInfo');
                                          },
                                          minWidth: 200.0,
                                          height: 50.0,
                                          color: const Color(0x7EE31A1A).withOpacity(0.5),
                                          child: Text(
                                            "Save & Exit",
                                            style: TextStyle(
                                              fontSize: 18.0,
                                              fontFamily: "verdana",
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 50.0,
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                        child: MaterialButton(
                                          onPressed: () async {
                                            dynamic result = await Navigator.pushNamed(context, '/tirthaAgentMainInfo');
                                          },
                                          minWidth: 125.0,
                                          height: 50.0,
                                          color: const Color(0x7EE31A1A).withOpacity(0.5),
                                          child: Text(
                                            "Next",
                                            style: TextStyle(
                                              fontSize: 18.0,
                                              fontFamily: "verdana",
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 185.0,
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                        child: MaterialButton(
                                          onPressed: () async {
                                            dynamic result = await Navigator.pushNamed(context, '/tirthaAgentMainInfo');
                                          },
                                          minWidth: 150.0,
                                          height: 50.0,
                                          color: Colors.grey.shade600,
                                          child: Text(
                                            "Cancel",
                                            style: TextStyle(
                                              fontSize: 18.0,
                                              fontFamily: "verdana",
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
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


