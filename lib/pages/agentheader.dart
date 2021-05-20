import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class agentHeader extends StatelessWidget {
  const agentHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Center(
          child: Container(
            color: Colors.deepPurple.shade300,
            width: 100.0,
            height: 125.0,
            padding: const EdgeInsets.all(10.0),
            child: Column(children: <Widget>[
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
                    fontFamily: "Calibiri",
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  )),
            ]),
          ),
        ),
        Container(
          color: Colors.deepPurple.shade300,
          width: 180.0,
          height: 125.0,
          //alignment: Alignment.centerLeft,
          padding: const EdgeInsets.fromLTRB(0, 40, 10, 10),
          child: Column(children: <Widget>[
            Text("Agent Platform",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "verdana",
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                )),
            Text("version 2.3",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "verdana",
                  fontSize: 12.0,
                  fontWeight: FontWeight.normal,
                )),
          ]),
        ),
        Container(
          color: Colors.deepPurple.shade300,
          width: 680.0,
          height: 125.0,
          //alignment: Alignment.centerLeft,
          padding: const EdgeInsets.fromLTRB(0, 50, 10, 10),
          child: Column(children: <Widget>[
            Text("New Tirtha Onboarding",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "verdana",
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
                  fontFamily: "verdana",
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                )),
          ]),
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
              child: Column(children: <Widget>[
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
                        fontFamily: "verdana",
                        fontSize: 10.0,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ]),
            ),
          ),
        ),
      ],
    );
  }
}