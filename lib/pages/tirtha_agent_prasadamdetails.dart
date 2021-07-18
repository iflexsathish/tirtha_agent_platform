import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import '../GlobalVals.dart' as globals;
import '../methods/tirthaPrasadam_method.dart' as tirthaPrasadam;
import '../pages/agentCommons.dart' as commons;

class tirthaAgentPrasadamDetails extends StatefulWidget {
  @override
  _tirthaAgentPrasadamDetailsState createState() => _tirthaAgentPrasadamDetailsState();
}

class _tirthaAgentPrasadamDetailsState extends State<tirthaAgentPrasadamDetails> {

  bool chkmonday = false;
  bool chktuesday = false;
  bool chkwednesday = false;
  bool chkthursday = false;
  bool chkfriday = false;
  bool chksaturday = false;
  bool chksunday = false;

  bool chkListed = false;

  final TextEditingController _nameController = new TextEditingController();
  final TextEditingController _typeController = new TextEditingController();
  final TextEditingController _locationController = new TextEditingController();

  final TextEditingController _prasadamCostController = new TextEditingController();
  final TextEditingController _prasadamQuantityController = new TextEditingController();
  final TextEditingController _prasadamMetricController = new TextEditingController();



  var tasteType = ["SWEET", "SOUR", "SALTY", "BITTER", "SAVORY"];
  var basisType = ["KILOGRAMS", "GRAMS", "LITRE", "MILLI_LITRE", "POUND", "COUNT"];

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
                    titleText: "Prasadam Details",
                  ),
                  Row(
                    children: [
                      Container(
                        color: Colors.grey.shade200,
                        width: 1260.0,
                        height: 60.0,
                        //alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.fromLTRB(0, 15 , 0, 0),
                        child: Row(
                          children: [
                            Column(
                                children: <Widget> [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 110.0,
                                      child: Text("Name",
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
                                    width: 500.0,
                                    height: 35.0,
                                    child: TextField(
                                        controller: _nameController
                                          ..text = 'Laddu',
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
                              width: 5.0,
                            ),
                            Column(
                                children: <Widget> [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 125.0,
                                      child: Text("Taste Type",
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
                                  Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Container(
                                      width: 200.0,
                                      height: 35.0,
                                      child: new Row(
                                        children: <Widget>[
                                          new Expanded(
                                              child: new TextField(
                                                  controller: _typeController
                                                    ..text = 'SWEET',
                                                  decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                      borderSide: BorderSide.none,
                                                    ),
                                                    filled: true,
                                                    fillColor: Colors.white,
                                                    contentPadding:
                                                    const EdgeInsets.only(
                                                        left: 10.0,
                                                        bottom: 8.0,
                                                        top: 0.0),
                                                  ),
                                                  style: TextStyle(
                                                    //color: Colors.grey,
                                                    backgroundColor: Colors.white38,
                                                    fontFamily: "verdana",
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.normal,
                                                  ))),
                                          new PopupMenuButton<String>(
                                            icon: const Icon(Icons.arrow_drop_down),
                                            onSelected: (String value) {
                                              _typeController.text = value;
                                            },
                                            itemBuilder: (BuildContext context) {
                                              return tasteType
                                                  .map<PopupMenuItem<String>>(
                                                      (String value) {
                                                    return new PopupMenuItem(
                                                        child: new Text(value),
                                                        value: value);
                                                  }).toList();
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
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
                        padding: const EdgeInsets.fromLTRB(0, 15 , 0, 0),
                        child: Row(
                          children: [
                            Column(
                                children: <Widget> [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 110.0,
                                      child: Text("Location",
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
                                    width: 500.0,
                                    height: 35.0,
                                    child: TextField(
                                        controller: _locationController
                                          ..text = 'Main Entrance',
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
                        padding: const EdgeInsets.fromLTRB(0, 15 , 0, 0),
                        child: Row(
                          children: [
                            Column(
                                children: <Widget> [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 110.0,
                                      child: Text("Cost (INR)",
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
                            SizedBox(
                              width: 5.0,
                            ),
                            Column(
                                children: <Widget> [
                                  Container(
                                    width: 100.0,
                                    height: 35.0,
                                    child: TextField(
                                        controller: _prasadamCostController
                                          ..text = '50',
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
                              width: 10.0,
                            ),
                            Column(
                                children: <Widget> [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 30.0,
                                      child: Text("For",
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
                            SizedBox(
                              width: 5.0,
                            ),
                            Column(
                                children: <Widget> [
                                  Container(
                                    width: 60.0,
                                    height: 35.0,
                                    child: TextField(
                                        controller: _prasadamQuantityController
                                          ..text = '100',
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
                              width: 5.0,
                            ),
                            Column(
                                children: <Widget> [
                                  Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Container(
                                      width: 200.0,
                                      height: 35.0,
                                      child: new Row(
                                        children: <Widget>[
                                          new Expanded(
                                              child: new TextField(
                                                  controller: _prasadamMetricController
                                                    ..text = 'GRAMS',
                                                  decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                      borderSide: BorderSide.none,
                                                    ),
                                                    filled: true,
                                                    fillColor: Colors.white,
                                                    contentPadding:
                                                    const EdgeInsets.only(
                                                        left: 10.0,
                                                        bottom: 8.0,
                                                        top: 0.0),
                                                  ),
                                                  style: TextStyle(
                                                    //color: Colors.grey,
                                                    backgroundColor: Colors.white38,
                                                    fontFamily: "verdana",
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.normal,
                                                  ))),
                                          new PopupMenuButton<String>(
                                            icon: const Icon(Icons.arrow_drop_down),
                                            onSelected: (String value) {
                                              _prasadamMetricController.text = value;
                                            },
                                            itemBuilder: (BuildContext context) {
                                              return basisType
                                                  .map<PopupMenuItem<String>>(
                                                      (String value) {
                                                    return new PopupMenuItem(
                                                        child: new Text(value),
                                                        value: value);
                                                  }).toList();
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
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
                        padding: const EdgeInsets.fromLTRB(0, 15 , 0, 0),
                        child: Row(
                          children: [
                            Column(
                                children: <Widget> [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 150.0,
                                      child: Text("Prasadam Days",
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
                        height: 80.0,
                        //alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.fromLTRB(20, 0 , 0, 0),
                        child: Row(
                          children: [
                            Column(
                                children: <Widget> [
                                  Container(
                                    width: 150.0,
                                    height: 25.0,
                                    child: CheckboxListTile(
                                      contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      title: Text('Monday',
                                          style: TextStyle(
                                            color: Colors.blue.shade600,
                                            fontFamily: "verdana" ,
                                            fontSize: 16.0,
                                          )
                                      ),
                                      dense: true,
                                      checkColor: Colors.blue,
                                      activeColor: Colors.red,
                                      value: this.chkmonday,
                                      onChanged: (bool value) {
                                        setState(() {
                                          this.chkmonday = value;
                                        });
                                      },
                                      controlAffinity: ListTileControlAffinity.leading,
                                    ),
                                  ),
                                ]
                            ),
                            Column(
                                children: <Widget> [
                                  Container(
                                    width: 150.0,
                                    height: 25.0,
                                    child: CheckboxListTile(
                                      contentPadding: EdgeInsets.all(0),
                                      title: Text('Tuesday',
                                          style: TextStyle(
                                            color: Colors.blue.shade600,
                                            fontFamily: "verdana" ,
                                            fontSize: 16.0,
                                          )
                                      ),
                                      dense: true,
                                      checkColor: Colors.blue,
                                      activeColor: Colors.red,
                                      value: this.chktuesday,
                                      onChanged: (bool value) {
                                        setState(() {
                                          this.chktuesday = value;
                                        });
                                      },
                                      controlAffinity: ListTileControlAffinity.leading,
                                    ),
                                  ),
                                ]
                            ),
                            Column(
                                children: <Widget> [
                                  Container(
                                    width: 170.0,
                                    height: 25.0,
                                    child: CheckboxListTile(
                                      contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      title: Text('Wednesday',
                                          style: TextStyle(
                                            color: Colors.blue.shade600,
                                            fontFamily: "verdana" ,
                                            fontSize: 16.0,
                                          )
                                      ),
                                      dense: true,
                                      checkColor: Colors.blue,
                                      activeColor: Colors.red,
                                      value: this.chkwednesday,
                                      onChanged: (bool value) {
                                        setState(() {
                                          this.chkwednesday = value;
                                        });
                                      },
                                      controlAffinity: ListTileControlAffinity.leading,
                                    ),
                                  ),
                                ]
                            ),
                            Column(
                                children: <Widget> [
                                  Container(
                                    width: 150.0,
                                    height: 25.0,
                                    child: CheckboxListTile(
                                      contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      title: Text('Thursday',
                                          style: TextStyle(
                                            color: Colors.blue.shade600,
                                            fontFamily: "verdana" ,
                                            fontSize: 16.0,
                                          )
                                      ),
                                      dense: true,
                                      checkColor: Colors.blue,
                                      activeColor: Colors.red,
                                      value: this.chkthursday,
                                      onChanged: (bool value) {
                                        setState(() {
                                          this.chkthursday = value;
                                        });
                                      },
                                      controlAffinity: ListTileControlAffinity.leading,
                                    ),
                                  ),
                                ]
                            ),
                            Column(
                                children: <Widget> [
                                  Container(
                                    width: 150.0,
                                    height: 25.0,
                                    child: CheckboxListTile(
                                      contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      title: Text('Friday',
                                          style: TextStyle(
                                            color: Colors.blue.shade600,
                                            fontFamily: "verdana" ,
                                            fontSize: 16.0,
                                          )
                                      ),
                                      dense: true,
                                      checkColor: Colors.blue,
                                      activeColor: Colors.red,
                                      value: this.chkfriday,
                                      onChanged: (bool value) {
                                        setState(() {
                                          this.chkfriday = value;
                                        });
                                      },
                                      controlAffinity: ListTileControlAffinity.leading,
                                    ),
                                  ),
                                ]
                            ),
                            Column(
                                children: <Widget> [
                                  Container(
                                    width: 150.0,
                                    height: 25.0,
                                    child: CheckboxListTile(
                                      contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      title: Text('Saturday',
                                          style: TextStyle(
                                            color: Colors.blue.shade600,
                                            fontFamily: "verdana" ,
                                            fontSize: 16.0,
                                          )
                                      ),
                                      dense: true,
                                      checkColor: Colors.blue,
                                      activeColor: Colors.red,
                                      value: this.chksaturday,
                                      onChanged: (bool value) {
                                        setState(() {
                                          this.chksaturday = value;
                                        });
                                      },
                                      controlAffinity: ListTileControlAffinity.leading,
                                    ),
                                  ),
                                ]
                            ),
                            Column(
                                children: <Widget> [
                                  Container(
                                    width: 150.0,
                                    height: 25.0,
                                    child: CheckboxListTile(
                                      contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      title: Text('Sunday',
                                          style: TextStyle(
                                            color: Colors.blue.shade600,
                                            fontFamily: "verdana" ,
                                            fontSize: 16.0,
                                          )
                                      ),
                                      dense: true,
                                      checkColor: Colors.blue,
                                      activeColor: Colors.red,
                                      value: this.chksunday,
                                      onChanged: (bool value) {
                                        setState(() {
                                          this.chksunday = value;
                                        });
                                      },
                                      controlAffinity: ListTileControlAffinity.leading,
                                    ),
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
                        height: 80.0,
                        //alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.fromLTRB(20, 10 , 0, 0),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 1050.0,
                            ),
                            Column(
                              children: [
                                Container(
                                  width: 120.0,
                                  height: 40.0,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    child: MaterialButton(
                                      onPressed: () async {

                                        List<String> prasadamDays = [];

                                        if (this.chkmonday) {
                                          prasadamDays.add("MONDAY");
                                        }
                                        if (this.chktuesday) {
                                          prasadamDays.add("TUESDAY");
                                        }
                                        if (this.chkwednesday) {
                                          prasadamDays.add("WEDNESDAY");
                                        }
                                        if (this.chkthursday) {
                                          prasadamDays.add("THURSDAY");
                                        }
                                        if (this.chkfriday) {
                                          prasadamDays.add("FRIDAY");
                                        }
                                        if (this.chksaturday) {
                                          prasadamDays.add("SATURDAY");
                                        }
                                        if (this.chksunday) {
                                          prasadamDays.add("SUNDAY");
                                        }

                                        final String responseCode =
                                        await tirthaPrasadam.saveTirthaPrasadam(
                                            _nameController.text,
                                            _typeController.text,
                                            prasadamDays,
                                            _locationController.text,
                                            int.parse(_prasadamCostController.text),
                                            int.parse(_prasadamQuantityController.text),
                                            _prasadamMetricController.text,
                                            chkListed
                                        );

                                        print(
                                            'saveTirthaPrasadam Called - AFTER');

                                        if (responseCode == "200" || responseCode == "201") {
                                          return showDialog(
                                            context: context,
                                            builder: (ctx) => AlertDialog(
                                              title: Text("Tirtha - Alert"),
                                              content: Text("Prasadam Details saved successfully for Tirtha Id: " + globals.tirthaId),
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
                                              content: Text("Prasadam details failed to save."),
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
                                      minWidth: 40.0,
                                      height: 50.0,
                                      color: const Color(0x7EE31A1A).withOpacity(0.5),
                                      child: Text(
                                        "Save",
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
                          height: 80.0,
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
                                          navigateToPage: "/tirthaAgentGuideDetails",
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
                                          navigateToPage: "/tirthaAgentDashBoard",
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


