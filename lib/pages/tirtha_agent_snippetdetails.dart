import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart';
import '../GlobalVals.dart' as globals;
import '../tirthaSeva_model.dart';
import '../pages/agentCommons.dart' as commons;

class tirthaAgentSnippetDetails extends StatefulWidget {
  @override
  _tirthaAgentSnippetDetailsState createState() => _tirthaAgentSnippetDetailsState();
}

// Future<String> saveTirthaSeva(
//     String sevaName,
//     List<String> sevaAvailableDays,
//     String sevaFrom,
//     String sevaTo,
//     String reportingTime,
//     String sevaRptPlace,
//     int sevaPersons,
//     int sevaCost,
//     String sevaInstruction) async {
//
//    final sevaTimingRecord=Timing(startTime: sevaFrom,endTime: sevaTo,reportingTime: reportingTime);
//    final List<Timing> sevaTimings=[sevaTimingRecord];
//
//   final tirthaSevaModelVal=TirthaSevaModel(
//       name: sevaName,availableOnDays: sevaAvailableDays,timing: sevaTimings,
//       reportingPoint: sevaRptPlace,maxPersonAllowed: sevaPersons,fee: sevaCost,displayImg: sevaName,
//       specialInstructions: sevaInstruction
//   );
//
//   // final String apiUrl = "http://10.0.2.2:7070/tirtha/tirtha/seva-details";
//   Map<String, String> headers = {"Content-type": "application/json"};
//   Map<String, String> queryParameters = {"tirthaId": globals.tirthaId};
//
//    print("Global tirtha id "+globals.tirthaId);
//
//    var apiUrl = Uri.http('10.0.2.2:7070', '/tirtha/tirtha/seva-details', queryParameters);
//
//   String body =tirthaSevaModelToJson(tirthaSevaModelVal);
//   print("Request body: "+body);
//
//   Response response = await post(apiUrl, headers: headers, body: body);
//   int statusCode = response.statusCode;
//   print("Response code:"+ statusCode.toString());
//
//
//   if (response.statusCode == 201 || response.statusCode == 200) {
//     return statusCode.toString();
//   } else {
//     return null;
//   }
// }

class _tirthaAgentSnippetDetailsState extends State<tirthaAgentSnippetDetails> {


  final TextEditingController _sevaNameController = new TextEditingController();
  final TextEditingController _sevafromController = new TextEditingController();
  final TextEditingController _sevatoController = new TextEditingController();
  final TextEditingController _reportingController = new TextEditingController();
  final TextEditingController _sevaPersonController = new TextEditingController();
  final TextEditingController _sevaRptPlaceController = new TextEditingController();
  final TextEditingController _sevaCostController = new TextEditingController();
  final TextEditingController _sevaInstructionController = new TextEditingController();

  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                //Header Row
                  commons.agentHeader(),
                  commons.agentTitleBar(
                    titleText: "Snippet Details",
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
                                    child: Container(
                                      width: 120.0,
                                      child: Text("Snippet URL",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            color: Colors.blue.shade600,
                                            fontFamily: "verdana" ,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold,
                                          )),
                                    ),
                                  ),
                                ]
                            ),
                            Column(
                                children: <Widget> [
                                  Container(
                                    width: 700.0,
                                    height: 35.0,
                                    child: TextField(
                                        controller: _sevaNameController
                                          ..text = 'Suprabhata Darshan',
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
                                    child: Container(
                                      width: 120.0,
                                      child: Text("Endpoint",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            color: Colors.blue.shade600,
                                            fontFamily: "verdana" ,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold,
                                          )),
                                    ),
                                  ),
                                ]
                            ),
                            Column(
                                children: <Widget> [
                                  Container(
                                    width: 700.0,
                                    height: 35.0,
                                    child: TextField(
                                        controller: _sevaNameController
                                          ..text = 'Suprabhata Darshan',
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
                                    child: Container(
                                      width: 120.0,
                                      child: Text("Description",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            color: Colors.blue.shade600,
                                            fontFamily: "verdana" ,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold,
                                          )),
                                    ),
                                  ),
                                ]
                            ),
                            Column(
                                children: <Widget> [
                                  Container(
                                    width: 800.0,
                                    height: 35.0,
                                    child: TextField(
                                        controller: _sevaNameController
                                          ..text = 'Suprabhata Darshan',
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
                            // Column(
                            //     children: <Widget> [
                            //       Padding(
                            //         padding: const EdgeInsets.all(8.0),
                            //         child: Container(
                            //           width: 120.0,
                            //           child: Text("Department",
                            //               textAlign: TextAlign.left,
                            //               style: TextStyle(
                            //                 color: Colors.blue.shade600,
                            //                 fontFamily: "verdana" ,
                            //                 fontSize: 16.0,
                            //                 fontWeight: FontWeight.bold,
                            //               )),
                            //         ),
                            //       ),
                            //     ]
                            // ),
                            // Column(
                            //     children: <Widget> [
                            //       Container(
                            //         width: 250.0,
                            //         height: 35.0,
                            //         child: TextField(
                            //             controller: _sevaNameController
                            //               ..text = 'Suprabhata Darshan',
                            //             decoration: InputDecoration(
                            //               border: OutlineInputBorder(
                            //                 borderSide: BorderSide.none,
                            //               ),
                            //               filled: true,
                            //               fillColor: Colors.white,
                            //               contentPadding: const EdgeInsets.only(
                            //                   left: 10.0, bottom: 8.0, top: 8.0),
                            //             ),
                            //             style: TextStyle(
                            //               //color: Colors.grey,
                            //               backgroundColor: Colors.white38,
                            //               fontFamily: "verdana" ,
                            //               fontSize: 16.0,
                            //               fontWeight: FontWeight.normal,
                            //             )),
                            //       ),
                            //     ]
                            // ),
                            // SizedBox(
                            //   width: 40.0,
                            // ),
                            // Column(
                            //     children: <Widget> [
                            //       Padding(
                            //         padding: const EdgeInsets.all(8.0),
                            //         child: Container(
                            //           width: 100.0,
                            //           child: Text("Designation",
                            //               textAlign: TextAlign.left,
                            //               style: TextStyle(
                            //                 color: Colors.blue.shade600,
                            //                 fontFamily: "verdana" ,
                            //                 fontSize: 16.0,
                            //                 fontWeight: FontWeight.bold,
                            //               )),
                            //         ),
                            //       ),
                            //     ]
                            // ),
                            // Column(
                            //     children: <Widget> [
                            //       Container(
                            //         width: 395.0,
                            //         height: 35.0,
                            //         child: TextField(
                            //             controller: _sevaNameController
                            //               ..text = 'Suprabhata Darshan',
                            //             decoration: InputDecoration(
                            //               border: OutlineInputBorder(
                            //                 borderSide: BorderSide.none,
                            //               ),
                            //               filled: true,
                            //               fillColor: Colors.white,
                            //               contentPadding: const EdgeInsets.only(
                            //                   left: 10.0, bottom: 8.0, top: 8.0),
                            //             ),
                            //             style: TextStyle(
                            //               //color: Colors.grey,
                            //               backgroundColor: Colors.white38,
                            //               fontFamily: "verdana" ,
                            //               fontSize: 16.0,
                            //               fontWeight: FontWeight.normal,
                            //             )),
                            //       ),
                            //     ]
                            // ),
                            // SizedBox(
                            //   width: 100.0,
                            // ),
                            // ClipRRect(
                            //   borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            //   child: MaterialButton(
                            //     onPressed: () async {
                            //       dynamic result = await Navigator.pushNamed(context, '/tirthaAgentMainInfo');
                            //     },
                            //     minWidth: 40.0,
                            //     height: 40.0,
                            //     color: const Color(0x7EE31A1A).withOpacity(0.5),
                            //     child: Text(
                            //       "Upload Image",
                            //       style: TextStyle(
                            //         fontSize: 14.0,
                            //         fontFamily: "verdana",
                            //         fontWeight: FontWeight.bold,
                            //         color: Colors.white,
                            //       ),
                            //     ),
                            //   ),
                            // ),
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
                        height: 140.0,
                        //alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.fromLTRB(20, 50 , 0, 0),
                        child: Row(
                          children: [
                            // Column(
                            //     children: <Widget> [
                            //       Padding(
                            //         padding: const EdgeInsets.all(8.0),
                            //         child: Container(
                            //           width: 130.0,
                            //           child: Text("Contact Timings",
                            //               textAlign: TextAlign.left,
                            //               style: TextStyle(
                            //                 color: Colors.blue.shade600,
                            //                 fontFamily: "verdana" ,
                            //                 fontSize: 16.0,
                            //                 fontWeight: FontWeight.bold,
                            //               )),
                            //         ),
                            //       ),
                            //     ]
                            // ),
                            // Column(
                            //     children: <Widget> [
                            //       Container(
                            //         width: 200.0,
                            //         height: 35.0,
                            //         child: TextField(
                            //             controller: _sevaPersonController
                            //               ..text = '1',
                            //             decoration: InputDecoration(
                            //               border: OutlineInputBorder(
                            //                 borderSide: BorderSide.none,
                            //               ),
                            //               filled: true,
                            //               fillColor: Colors.white,
                            //               contentPadding: const EdgeInsets.only(
                            //                   left: 10.0, bottom: 8.0, top: 8.0),
                            //             ),
                            //             style: TextStyle(
                            //               //color: Colors.grey,
                            //               backgroundColor: Colors.white38,
                            //               fontFamily: "verdana" ,
                            //               fontSize: 16.0,
                            //               fontWeight: FontWeight.normal,
                            //             )),
                            //       ),
                            //     ]
                            // ),
                            SizedBox(
                              width: 1000.0,
                            ),
                            Column(
                              children: [
                                Container(
                                  width: 150.0,
                                  height: 40.0,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    child: MaterialButton(
                                      onPressed: () async {

                                        final String sevaName =
                                            _sevaNameController.text;
                                        final String sevaFrom =
                                            _sevafromController.text;
                                        final String sevaTo =
                                            _sevatoController.text;
                                        final String reportingTime =
                                            _reportingController.text;
                                        final String sevaPersons =
                                        _sevaPersonController.text;
                                        final int sevaPersonInt = int.parse(sevaPersons);
                                        final String sevaRptPlace =
                                            _sevaRptPlaceController.text;
                                        final String sevaCost =
                                            _sevaCostController.text;
                                        final int sevaCostInt = int.parse(sevaCost);
                                        // final int sevaCostInt = sevaCost.
                                        final String sevaInstruction =
                                            _sevaInstructionController.text;

                                        // final String responseCode =
                                        // await saveTirthaSeva(
                                        //     sevaName,
                                        //     sevaAvblDays,
                                        //     sevaFrom,
                                        //     sevaTo,
                                        //     reportingTime,
                                        //     sevaRptPlace,
                                        //     sevaPersonInt,
                                        //     sevaCostInt,
                                        //     sevaInstruction
                                        // );

                                        print(
                                            'saveTirthaSeva Called - AFTER');

                                        // if (responseCode == "200" || responseCode == "201") {
                                        //   return showDialog(
                                        //     context: context,
                                        //     builder: (ctx) => AlertDialog(
                                        //       title: Text("Tirtha - Alert"),
                                        //       content: Text("Seva Details saved successfully for Tirtha Id: " + globals.tirthaId),
                                        //       actions: <Widget>[
                                        //         FlatButton(
                                        //           onPressed: () {
                                        //             Navigator.of(ctx).pop();
                                        //           },
                                        //           child: Text("OK"),
                                        //         ),
                                        //       ],
                                        //     ),
                                        //   );
                                        // } else {
                                        //   return showDialog(
                                        //     context: context,
                                        //     builder: (ctx) => AlertDialog(
                                        //       title: Text("Tirtha - Alert"),
                                        //       content: Text("Seva details failed to save."),
                                        //       actions: <Widget>[
                                        //         FlatButton(
                                        //           onPressed: () {
                                        //             Navigator.of(ctx).pop();
                                        //           },
                                        //           child: Text("OK"),
                                        //         ),
                                        //       ],
                                        //     ),
                                        //   );
                                        // }

                                        //dynamic result = await Navigator.pushNamed(context, '/tirthaAgentMainInfo');
                                      },
                                      minWidth: 50.0,
                                      height: 50.0,
                                      color: const Color(0x7EE31A1A).withOpacity(0.5),
                                      child: Text(
                                        "Add Details",
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
                                        commons.NavigateToPrev(
                                          navigateToPage: "/tirthaAgentContactDetails",
                                          height: 50.0,
                                          width: 125.0,
                                        ),
                                        SizedBox(
                                          width: 50.0,
                                        ),
                                        ClipRRect(
                                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                          child: MaterialButton(
                                            onPressed: () async {
                                              dynamic result = await Navigator.pushNamed(context, '/tirthaAgentDashBoard');
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
                                        commons.NavigateToNext(
                                          navigateToPage: "/tirthaAgentSnippetDetails",
                                          height: 50.0,
                                          width: 125.0,
                                        ),
                                        SizedBox(
                                          width: 185.0,
                                        ),
                                        commons.NavigateToCancel(
                                          navigateToPage: "/tirthaAgentDashBoard",
                                          height: 50.0,
                                          width: 150.0,
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
      ),
    );
  }
}


