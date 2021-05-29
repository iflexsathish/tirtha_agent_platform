import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import '../GlobalVals.dart' as globals;
import '../methods/tirthaSnippet_method.dart' as tirthaSnippet;
import '../pages/agentCommons.dart' as commons;

class tirthaAgentSnippetDetails extends StatefulWidget {
  @override
  _tirthaAgentSnippetDetailsState createState() => _tirthaAgentSnippetDetailsState();
}


class _tirthaAgentSnippetDetailsState extends State<tirthaAgentSnippetDetails> {

  final TextEditingController _snippetURLController = new TextEditingController();
  final TextEditingController _snippetEndPointController = new TextEditingController();
  final TextEditingController _snippetDescController = new TextEditingController();

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
                                        controller: _snippetURLController
                                          ..text = 'https://en.wikipedia.org/wiki/Tirupati',
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
                                        controller: _snippetEndPointController
                                          ..text = 'https://en.wikipedia.org/wiki/Tirupati/Main-Details',
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
                                        controller: _snippetDescController
                                          ..text = 'Snippet for retrieving Tirupathi temple details',
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

                                        final String sURL =
                                            _snippetURLController.text;
                                        final String sEndPoint =
                                            _snippetEndPointController.text;
                                        final String sDesc =
                                            _snippetDescController.text;

                                        final String responseCode =
                                        await tirthaSnippet.saveTirthaSnippet(
                                            sURL,
                                            sEndPoint,
                                            sDesc
                                        );

                                        print(
                                            'saveTirthaSeva Called - AFTER');

                                        if (responseCode == "200" || responseCode == "201") {
                                          return showDialog(
                                            context: context,
                                            builder: (ctx) => AlertDialog(
                                              title: Text("Tirtha - Alert"),
                                              content: Text("Snippet Details saved successfully for Tirtha Id: " + globals.tirthaId),
                                              actions: <Widget>[
                                                FlatButton(
                                                  onPressed: () {
                                                    Navigator.of(ctx).pop();
                                                  },
                                                  child: Text("OK"),
                                                ),
                                              ],
                                            ),
                                          );
                                        } else {
                                          return showDialog(
                                            context: context,
                                            builder: (ctx) => AlertDialog(
                                              title: Text("Tirtha - Alert"),
                                              content: Text("Snippet details failed to save."),
                                              actions: <Widget>[
                                                FlatButton(
                                                  onPressed: () {
                                                    Navigator.of(ctx).pop();
                                                  },
                                                  child: Text("OK"),
                                                ),
                                              ],
                                            ),
                                          );
                                        }

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
                                          navigateToPage: "/tirthaAgentAddlDetails",
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


