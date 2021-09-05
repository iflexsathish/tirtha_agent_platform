import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:tirtha_agent/models/tirtha_agentDashboard_RespModel.dart';
import '../methods/tirthaAgentDashboard_method.dart' as tirthaDashboard;

class tirthaAgentDashBoard extends StatefulWidget {
  @override
  _tirthaAgentDashBoardState createState() => _tirthaAgentDashBoardState();
}

class _tirthaAgentDashBoardState extends State<tirthaAgentDashBoard> {

  @override
  Future<void> initState() async {
    super.initState();
    print('hi there');

    Future<AgentDashboard> dashboardData =
      tirthaDashboard.fetchTirthaDetails(
      10,
      1).catchError(
              (Object e, StackTrace stackTrace) {
            print(e.toString());
            print(stackTrace);
          },
          test: (Object error) => error is Exception
      )
          .whenComplete(() { print('complete'); });

    // dashboardData.then((value) => print("object value" + value.toString()).catchError.);

    // try{
    //   AgentDashboard onValue= await tirthaDashboard.fetchTirthaDetails(
    //       10,
    //       1);
    //   print('On success : $onValue');
    // }on Exception catch( onError){
    //   print('On error : $onError');
    // }finally{
    //   print('On success/error its commpeted');
    // }

  }


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
                            fontFamily: "verdana" ,
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
                    //width: 980.0,
                    height: 125.0,
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: 980,
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
                          //width: 300.0,
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(5, 35, 0, 0),
                                    child: GestureDetector(
                                      onTap: () async {
                                        dynamic result = await Navigator.pushNamed(context, '/tirthaAgentMainInfo');
                                        //dynamic result = await Navigator.pushNamed(context, '/tirthaAgentTirthaLanding');
                                      },
                                      child: Container(
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
                                    ),
                                  ),
                                ],
                              ),
                              FittedBox(
                                fit: BoxFit.cover,
                                child: Column(
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
                                        'assets/images/VarahaSwamy1.jpg',
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
                                    child: Text("Shri Varaha Swamy Temple",
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
                                        Text("UNDER REVIEW",
                                            style: TextStyle(
                                              color: Colors.amber.shade600,
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
                                        Text("122",
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
                                        'assets/images/ragamber.png',
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
                                        'assets/images/Govindarajaswamy1.jpg',
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
                                    child: Text("Govinda Raja Swamy Temple",
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
                                        Text("49",
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
                                        'assets/images/Padmavathi_Ammavari_Temple.jpg',
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
                                    child: Text("Sri Padmavathi Ammavari Temple",
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
                                        Text("UNDER REVIEW",
                                            style: TextStyle(
                                              color: Colors.amber.shade600,
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
                                        Text("NA",
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
                                        'assets/images/ragamber.png',
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
                                        'assets/images/VarahaSwamy1.jpg',
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
                                    child: Text("Shri Varaha Swamy Temple",
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
                                        Text("UNDER REVIEW",
                                            style: TextStyle(
                                              color: Colors.amber.shade600,
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
                                        Text("122",
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
                                        'assets/images/ragamber.png',
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
                                        'assets/images/Govindarajaswamy1.jpg',
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
                                    child: Text("Govinda Raja Swamy Temple",
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
                                        Text("49",
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
                                        'assets/images/Padmavathi_Ammavari_Temple.jpg',
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
                                    child: Text("Sri Padmavathi Ammavari Temple",
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
                                        Text("UNDER REVIEW",
                                            style: TextStyle(
                                              color: Colors.amber.shade600,
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
                                        Text("NA",
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
                                        'assets/images/ragamber.png',
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
                // Work In Progress Tirtha Row
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
                                        'assets/images/HanumanTirupati1.jpg',
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
                                    child: Text("Bedi Anjaneyar",
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
                                        Text("DRAFT",
                                            style: TextStyle(
                                              color: Colors.grey.shade600,
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
                                        Text("Stages Completed :",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Text("3/10",
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
                                        'assets/images/raggrey.png',
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
                                        'assets/images/Venugopalaswamy1.jpg',
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
                                    child: Text("Venugopala Swamy Temple",
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
                                        Text("DRAFT",
                                            style: TextStyle(
                                              color: Colors.grey.shade600,
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
                                        Text("Stages Completed :",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Text("8/10",
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
                                        'assets/images/raggrey.png',
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
                                        'assets/images/KanipakamGanesha.jpg',
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
                                    child: Text("Vinayaka Temple",
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
                                        Text("DRAFT",
                                            style: TextStyle(
                                              color: Colors.grey.shade600,
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
                                        Text("Stages Completed :",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Text("5/10",
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
                                        'assets/images/raggrey.png',
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
                                        'assets/images/Saibaba2.jpg',
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
                                    child: Text("Sri Saibaba Swamy Temple",
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
                                        Text("DRAFT",
                                            style: TextStyle(
                                              color: Colors.grey.shade600,
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
                                        Text("Stages Completed :",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Text("5/10",
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
                                        'assets/images/raggrey.png',
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
                                        'assets/images/HanumanTirupati1.jpg',
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
                                    child: Text("Bedi Anjaneyar",
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
                                        Text("DRAFT",
                                            style: TextStyle(
                                              color: Colors.grey.shade600,
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
                                        Text("Stages Completed :",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Text("3/10",
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
                                        'assets/images/raggrey.png',
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
                                        'assets/images/Venugopalaswamy1.jpg',
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
                                    child: Text("Venugopala Swamy Temple",
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
                                        Text("DRAFT",
                                            style: TextStyle(
                                              color: Colors.grey.shade600,
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
                                        Text("Stages Completed :",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Text("8/10",
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
                                        'assets/images/raggrey.png',
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
                                        'assets/images/KanipakamGanesha.jpg',
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
                                    child: Text("Vinayaka Temple",
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
                                        Text("DRAFT",
                                            style: TextStyle(
                                              color: Colors.grey.shade600,
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
                                        Text("Stages Completed :",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Text("5/10",
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
                                        'assets/images/raggrey.png',
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
                                        'assets/images/Saibaba2.jpg',
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
                                    child: Text("Sri Saibaba Swamy Temple",
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
                                        Text("DRAFT",
                                            style: TextStyle(
                                              color: Colors.grey.shade600,
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
                                        Text("Stages Completed :",
                                            style: TextStyle(
                                              color: Colors.deepPurple.shade300,
                                              fontFamily: "verdana" ,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Text("5/10",
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
                                        'assets/images/raggrey.png',
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
                        color: Colors.grey.shade100,
                        width: 1260.0,
                        height: 140.0,
                        // margin: EdgeInsets.all(100.0),
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.all(40.0),
                            child: Column(
                              children: [
                                Material(
                                  borderRadius: BorderRadius.circular(10.0),
                                  //elevation: 5.0,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                    child: MaterialButton(
                                      onPressed: () async {
                                        // dynamic result = await Navigator.pushNamed(context, '/tirthaAgentMainInfo');
                                        dynamic result = await Navigator.pushNamed(context, '/tirthaLogin');
                                      },
                                      minWidth: 250.0,
                                      height: 50.0,
                                      color: Colors.deepPurple.shade300,
                                      child: Text(
                                        "Log out",
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          fontFamily: "verdana",
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
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


