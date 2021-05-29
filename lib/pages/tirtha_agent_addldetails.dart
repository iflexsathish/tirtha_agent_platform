import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import '../GlobalVals.dart' as globals;
import '../methods/tirthaAddlDetails_method.dart' as tirthaAddlDetails;
import '../pages/agentCommons.dart' as commons;

class tirthaAgentAddlDetails extends StatefulWidget {
  @override
  _tirthaAgentAddlDetailsState createState() => _tirthaAgentAddlDetailsState();
}

class _tirthaAgentAddlDetailsState extends State<tirthaAgentAddlDetails> {

  bool chkchariot = false;
  bool chkpond = false;
  bool chkweighingscale = false;
  bool chkprasadam = false;
  bool chkhundi = false;
  bool chkspecialdarshan = false;
  bool chkdresscode = false;
  bool chkonseashore = false;
  bool chkfreeacco = false;
  bool chkfreefood = false;
  bool chkfreetransport = false;
  bool chktrekrequired = false;
  bool chkstairsinvolved = false;
  bool chkcaveinpassage = false;
  bool chksurroundedbywater = false;
  bool chkelephant = false;
  bool chkpondfish = false;
  bool chkdhoti = false;
  bool chkformals = false;
  bool chkshirtless = false;
  bool chksaree = false;
  bool chkchudidhar = false;

  final TextEditingController _tirthaSpecialityController = new TextEditingController();
  final TextEditingController _altitudeLevelController = new TextEditingController();
  final TextEditingController _trekDistanceMetricController = new TextEditingController();
  final TextEditingController _trekDistanceValueController = new TextEditingController();
  final TextEditingController _walkingDistanceMetricController = new TextEditingController();
  final TextEditingController _walkingDistanceValueController = new TextEditingController();
  final TextEditingController _stairsComplexityController = new TextEditingController();
  final TextEditingController _stairsStepCountController = new TextEditingController();
  final TextEditingController _caveLengthMetricController = new TextEditingController();
  final TextEditingController _caveLengthValueController = new TextEditingController();
  final TextEditingController _caveDiameterMetricController = new TextEditingController();
  final TextEditingController _caveDiameterValueController = new TextEditingController();

  final TextEditingController _metriccontroller = new TextEditingController();
  var metricType = ['KILOMETERS','MILES','OTHERS'];

  final TextEditingController _complexitycontroller = new TextEditingController();
  var stepsComplexityType = ['MANAGEABLE','STEEP','VERY STEEP'];

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
                    titleText: "Additional Details",
                  ),
                  Row(
                    children: [
                      Container(
                        color: Colors.grey.shade200,
                        width: 1260.0,
                        height: 450.0,
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.fromLTRB(20, 15 , 0, 0),
                        child: Row(
                          children: [
                            Column  (
                                children: <Widget> [
                                  Container(
                                    width: 300.0,
                                    child: CheckboxListTile(
                                      contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      title: Text('Temple Chariot',
                                          style: TextStyle(
                                            color: Colors.blue.shade600,
                                            fontFamily: "verdana" ,
                                            fontSize: 16.0,
                                          )
                                      ),
                                      dense: true,
                                      checkColor: Colors.blue,
                                      activeColor: Colors.red,
                                      value: this.chkchariot,
                                      onChanged: (bool value) {
                                        setState(() {
                                          this.chkchariot = value;
                                        });
                                      },
                                      controlAffinity: ListTileControlAffinity.leading,
                                    ),
                                  ),
                                  Container(
                                    width: 300.0,
                                    child: CheckboxListTile(
                                      contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      title: Text('Kalyani/Pond',
                                          style: TextStyle(
                                            color: Colors.blue.shade600,
                                            fontFamily: "verdana" ,
                                            fontSize: 16.0,
                                          )
                                      ),
                                      dense: true,
                                      checkColor: Colors.blue,
                                      activeColor: Colors.red,
                                      value: this.chkpond,
                                      onChanged: (bool value) {
                                        setState(() {
                                          this.chkpond = value;
                                        });
                                      },
                                      controlAffinity: ListTileControlAffinity.leading,
                                    ),
                                  ),
                                  Container(
                                    width: 300.0,
                                    child: CheckboxListTile(
                                      contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      title: Text('Weighing Scale',
                                          style: TextStyle(
                                            color: Colors.blue.shade600,
                                            fontFamily: "verdana" ,
                                            fontSize: 16.0,
                                          )
                                      ),
                                      dense: true,
                                      checkColor: Colors.blue,
                                      activeColor: Colors.red,
                                      value: this.chkweighingscale,
                                      onChanged: (bool value) {
                                        setState(() {
                                          this.chkweighingscale = value;
                                        });
                                      },
                                      controlAffinity: ListTileControlAffinity.leading,
                                    ),
                                  ),
                                  Container(
                                    width: 300.0,
                                    child: CheckboxListTile(
                                      contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      title: Text('Prasadam',
                                          style: TextStyle(
                                            color: Colors.blue.shade600,
                                            fontFamily: "verdana" ,
                                            fontSize: 16.0,
                                          )
                                      ),
                                      dense: true,
                                      checkColor: Colors.blue,
                                      activeColor: Colors.red,
                                      value: this.chkprasadam,
                                      onChanged: (bool value) {
                                        setState(() {
                                          this.chkprasadam = value;
                                        });
                                      },
                                      controlAffinity: ListTileControlAffinity.leading,
                                    ),
                                  ),
                                  Container(
                                    width: 300.0,
                                    child: CheckboxListTile(
                                      contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      title: Text('Hundi Service',
                                          style: TextStyle(
                                            color: Colors.blue.shade600,
                                            fontFamily: "verdana" ,
                                            fontSize: 16.0,
                                          )
                                      ),
                                      dense: true,
                                      checkColor: Colors.blue,
                                      activeColor: Colors.red,
                                      value: this.chkhundi,
                                      onChanged: (bool value) {
                                        setState(() {
                                          this.chkhundi = value;
                                        });
                                      },
                                      controlAffinity: ListTileControlAffinity.leading,
                                    ),
                                  ),
                                  Container(
                                    width: 300.0,
                                    child: CheckboxListTile(
                                      contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      title: Text('Special/Quick Darshan',
                                          style: TextStyle(
                                            color: Colors.blue.shade600,
                                            fontFamily: "verdana" ,
                                            fontSize: 16.0,
                                          )
                                      ),
                                      dense: true,
                                      checkColor: Colors.blue,
                                      activeColor: Colors.red,
                                      value: this.chkspecialdarshan,
                                      onChanged: (bool value) {
                                        setState(() {
                                          this.chkspecialdarshan = value;
                                        });
                                      },
                                      controlAffinity: ListTileControlAffinity.leading,
                                    ),
                                  ),
                                  Container(
                                    width: 300.0,
                                    child: CheckboxListTile(
                                      contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      title: Text('Dress Code Applicable',
                                          style: TextStyle(
                                            color: Colors.blue.shade600,
                                            fontFamily: "verdana" ,
                                            fontSize: 16.0,
                                          )
                                      ),
                                      dense: true,
                                      checkColor: Colors.blue,
                                      activeColor: Colors.red,
                                      value: this.chkdresscode,
                                      onChanged: (bool value) {
                                        setState(() {
                                          this.chkdresscode = value;
                                        });
                                      },
                                      controlAffinity: ListTileControlAffinity.leading,
                                    ),
                                  ),
                                  Container(
                                    width: 300.0,
                                    child: CheckboxListTile(
                                      contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      title: Text('Temple Elephant',
                                          style: TextStyle(
                                            color: Colors.blue.shade600,
                                            fontFamily: "verdana" ,
                                            fontSize: 16.0,
                                          )
                                      ),
                                      dense: true,
                                      checkColor: Colors.blue,
                                      activeColor: Colors.red,
                                      value: this.chkdresscode,
                                      onChanged: (bool value) {
                                        setState(() {
                                          this.chkdresscode = value;
                                        });
                                      },
                                      controlAffinity: ListTileControlAffinity.leading,
                                    ),
                                  ),
                                  Container(
                                    width: 300.0,
                                    child: CheckboxListTile(
                                      contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      title: Text('Pond Fish',
                                          style: TextStyle(
                                            color: Colors.blue.shade600,
                                            fontFamily: "verdana" ,
                                            fontSize: 16.0,
                                          )
                                      ),
                                      dense: true,
                                      checkColor: Colors.blue,
                                      activeColor: Colors.red,
                                      value: this.chkdresscode,
                                      onChanged: (bool value) {
                                        setState(() {
                                          this.chkdresscode = value;
                                        });
                                      },
                                      controlAffinity: ListTileControlAffinity.leading,
                                    ),
                                  ),
                                ]
                            ),
                            Column(
                                children: <Widget> [
                                  Row(
                                    children: [
                                      Container(
                                        width: 130.0,
                                        // height: 400.0,
                                        child: Text("Altitude Level",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: Colors.blue.shade600,
                                              fontFamily: "verdana" ,
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                      ),
                                      SizedBox(
                                        width: 5.0,
                                      ),
                                      Container(
                                        width: 100.0,
                                        height: 35.0,
                                        // height: 400.0,
                                        child: TextField(
                                          // controller: _sevaNameController
                                          //   ..text = 'Suprabhata Darshan',
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
                                      SizedBox(
                                        width: 25.0,
                                      ),
                                      Container(
                                        width: 150.0,
                                        // height: 400.0,
                                        child: Text("Walking Distance",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: Colors.blue.shade600,
                                              fontFamily: "verdana" ,
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                      ),
                                      SizedBox(
                                        width: 5.0,
                                      ),
                                      Container(
                                        width: 100.0,
                                        height: 35.0,
                                        // height: 400.0,
                                        child: TextField(
                                          // controller: _sevaNameController
                                          //   ..text = 'Suprabhata Darshan',
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
                                      SizedBox(
                                        width: 5.0,
                                      ),
                                      Container(
                                        width: 180.0,
                                        height: 35.0,
                                        child: new Row(
                                          children: <Widget>[
                                            new Expanded(
                                                child: new TextField(
                                                    controller: _metriccontroller
                                                      ..text = 'KILOMETERS',
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
                                                          top: 8.0),
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
                                                _metriccontroller.text = value;
                                              },
                                              itemBuilder: (BuildContext context) {
                                                return metricType
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
                                    ],
                                  ),
                                  SizedBox(
                                    height: 25.0,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 200.0,
                                        child: CheckboxListTile(
                                          contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                          title: Text('Trek involved',
                                              style: TextStyle(
                                                color: Colors.blue.shade600,
                                                fontFamily: "verdana" ,
                                                fontSize: 16.0,
                                              )
                                          ),
                                          dense: true,
                                          checkColor: Colors.blue,
                                          activeColor: Colors.red,
                                          value: this.chkchariot,
                                          onChanged: (bool value) {
                                            setState(() {
                                              this.chkchariot = value;
                                            });
                                          },
                                          controlAffinity: ListTileControlAffinity.leading,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5.0,
                                      ),
                                      Container(
                                        width: 150.0,
                                        // height: 400.0,
                                        child: Text("Trekking Distance",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: Colors.blue.shade600,
                                              fontFamily: "verdana" ,
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                      ),
                                      SizedBox(
                                        width: 5.0,
                                      ),
                                      Container(
                                        width: 100.0,
                                        height: 35.0,
                                        // height: 400.0,
                                        child: TextField(
                                          // controller: _sevaNameController
                                          //   ..text = 'Suprabhata Darshan',
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
                                      SizedBox(
                                        width: 5.0,
                                      ),
                                      Container(
                                        width: 180.0,
                                        height: 35.0,
                                        child: new Row(
                                          children: <Widget>[
                                            new Expanded(
                                                child: new TextField(
                                                    controller: _metriccontroller
                                                      ..text = 'KILOMETERS',
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
                                                          top: 8.0),
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
                                                _metriccontroller.text = value;
                                              },
                                              itemBuilder: (BuildContext context) {
                                                return metricType
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
                                    ],
                                  ),
                                  SizedBox(
                                    height: 25.0,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 200.0,
                                        child: CheckboxListTile(
                                          contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                          title: Text('Stairs involved',
                                              style: TextStyle(
                                                color: Colors.blue.shade600,
                                                fontFamily: "verdana" ,
                                                fontSize: 16.0,
                                              )
                                          ),
                                          dense: true,
                                          checkColor: Colors.blue,
                                          activeColor: Colors.red,
                                          value: this.chkchariot,
                                          onChanged: (bool value) {
                                            setState(() {
                                              this.chkchariot = value;
                                            });
                                          },
                                          controlAffinity: ListTileControlAffinity.leading,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5.0,
                                      ),
                                      Container(
                                        width: 100.0,
                                        // height: 400.0,
                                        child: Text("No of steps",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: Colors.blue.shade600,
                                              fontFamily: "verdana" ,
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                      ),
                                      SizedBox(
                                        width: 5.0,
                                      ),
                                      Container(
                                        width: 100.0,
                                        height: 35.0,
                                        // height: 400.0,
                                        child: TextField(
                                          // controller: _sevaNameController
                                          //   ..text = 'Suprabhata Darshan',
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
                                      SizedBox(
                                        width: 25.0,
                                      ),
                                      Container(
                                        width: 100.0,
                                        // height: 400.0,
                                        child: Text("Complexity",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: Colors.blue.shade600,
                                              fontFamily: "verdana" ,
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                      ),
                                      SizedBox(
                                        width: 5.0,
                                      ),
                                      Container(
                                        width: 200.0,
                                        height: 35.0,
                                        child: new Row(
                                          children: <Widget>[
                                            new Expanded(
                                                child: new TextField(
                                                    controller: _complexitycontroller
                                                      ..text = 'MANAGEABLE',
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
                                                          top: 8.0),
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
                                                _complexitycontroller.text = value;
                                              },
                                              itemBuilder: (BuildContext context) {
                                                return stepsComplexityType
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
                                    ],
                                  ),
                                  SizedBox(
                                    height: 25.0,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 150.0,
                                        child: CheckboxListTile(
                                          contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                          title: Text('Cave Entry',
                                              style: TextStyle(
                                                color: Colors.blue.shade600,
                                                fontFamily: "verdana" ,
                                                fontSize: 16.0,
                                              )
                                          ),
                                          dense: true,
                                          checkColor: Colors.blue,
                                          activeColor: Colors.red,
                                          value: this.chkchariot,
                                          onChanged: (bool value) {
                                            setState(() {
                                              this.chkchariot = value;
                                            });
                                          },
                                          controlAffinity: ListTileControlAffinity.leading,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 25.0,
                                      ),
                                      Container(
                                        width: 80.0,
                                        // height: 400.0,
                                        child: Text("Diameter",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: Colors.blue.shade600,
                                              fontFamily: "verdana" ,
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                      ),
                                      Container(
                                        width: 75.0,
                                        height: 35.0,
                                        // height: 400.0,
                                        child: TextField(
                                          // controller: _sevaNameController
                                          //   ..text = 'Suprabhata Darshan',
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
                                      SizedBox(
                                        width: 5.0,
                                      ),
                                      Container(
                                        width: 180.0,
                                        height: 35.0,
                                        child: new Row(
                                          children: <Widget>[
                                            new Expanded(
                                                child: new TextField(
                                                    controller: _metriccontroller
                                                      ..text = 'KILOMETERS',
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
                                                          top: 8.0),
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
                                                _metriccontroller.text = value;
                                              },
                                              itemBuilder: (BuildContext context) {
                                                return metricType
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
                                      SizedBox(
                                        width: 5.0,
                                      ),
                                      Container(
                                        width: 70.0,
                                        // height: 400.0,
                                        child: Text("Length",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: Colors.blue.shade600,
                                              fontFamily: "verdana" ,
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                      ),
                                      Container(
                                        width: 75.0,
                                        height: 35.0,
                                        // height: 400.0,
                                        child: TextField(
                                          // controller: _sevaNameController
                                          //   ..text = 'Suprabhata Darshan',
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
                                      SizedBox(
                                        width: 5.0,
                                      ),
                                      Container(
                                        width: 180.0,
                                        height: 35.0,
                                        child: new Row(
                                          children: <Widget>[
                                            new Expanded(
                                                child: new TextField(
                                                    controller: _metriccontroller
                                                      ..text = 'KILOMETERS',
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
                                                          top: 8.0),
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
                                                _metriccontroller.text = value;
                                              },
                                              itemBuilder: (BuildContext context) {
                                                return metricType
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
                                    ],
                                  ),
                                  SizedBox(
                                    height: 25.0,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 140.0,
                                        child: CheckboxListTile(
                                          contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                          title: Text('Free Acco',
                                              style: TextStyle(
                                                color: Colors.blue.shade600,
                                                fontFamily: "verdana" ,
                                                fontSize: 16.0,
                                              )
                                          ),
                                          dense: true,
                                          checkColor: Colors.blue,
                                          activeColor: Colors.red,
                                          value: this.chkchariot,
                                          onChanged: (bool value) {
                                            setState(() {
                                              this.chkchariot = value;
                                            });
                                          },
                                          controlAffinity: ListTileControlAffinity.leading,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Container(
                                        width: 140.0,
                                        child: CheckboxListTile(
                                          contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                          title: Text('Free Food',
                                              style: TextStyle(
                                                color: Colors.blue.shade600,
                                                fontFamily: "verdana" ,
                                                fontSize: 16.0,
                                              )
                                          ),
                                          dense: true,
                                          checkColor: Colors.blue,
                                          activeColor: Colors.red,
                                          value: this.chkchariot,
                                          onChanged: (bool value) {
                                            setState(() {
                                              this.chkchariot = value;
                                            });
                                          },
                                          controlAffinity: ListTileControlAffinity.leading,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Container(
                                        width: 180.0,
                                        child: CheckboxListTile(
                                          contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                          title: Text('Free Transport',
                                              style: TextStyle(
                                                color: Colors.blue.shade600,
                                                fontFamily: "verdana" ,
                                                fontSize: 16.0,
                                              )
                                          ),
                                          dense: true,
                                          checkColor: Colors.blue,
                                          activeColor: Colors.red,
                                          value: this.chkchariot,
                                          onChanged: (bool value) {
                                            setState(() {
                                              this.chkchariot = value;
                                            });
                                          },
                                          controlAffinity: ListTileControlAffinity.leading,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Container(
                                        width: 170.0,
                                        child: CheckboxListTile(
                                          contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                          title: Text('On Seashore',
                                              style: TextStyle(
                                                color: Colors.blue.shade600,
                                                fontFamily: "verdana" ,
                                                fontSize: 16.0,
                                              )
                                          ),
                                          dense: true,
                                          checkColor: Colors.blue,
                                          activeColor: Colors.red,
                                          value: this.chkchariot,
                                          onChanged: (bool value) {
                                            setState(() {
                                              this.chkchariot = value;
                                            });
                                          },
                                          controlAffinity: ListTileControlAffinity.leading,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Container(
                                        width: 150.0,
                                        child: CheckboxListTile(
                                          contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                          title: Text('Island',
                                              style: TextStyle(
                                                color: Colors.blue.shade600,
                                                fontFamily: "verdana" ,
                                                fontSize: 16.0,
                                              )
                                          ),
                                          dense: true,
                                          checkColor: Colors.blue,
                                          activeColor: Colors.red,
                                          value: this.chkchariot,
                                          onChanged: (bool value) {
                                            setState(() {
                                              this.chkchariot = value;
                                            });
                                          },
                                          controlAffinity: ListTileControlAffinity.leading,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 25.0,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 110.0,
                                        // height: 400.0,
                                        child: Text("Dress Code",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: Colors.blue.shade600,
                                              fontFamily: "verdana" ,
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold,
                                            )),
                                      ),
                                      SizedBox(
                                        width: 5.0,
                                      ),
                                      Container(
                                        width: 100.0,
                                        child: CheckboxListTile(
                                          contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                          title: Text('Dhoti',
                                              style: TextStyle(
                                                color: Colors.blue.shade600,
                                                fontFamily: "verdana" ,
                                                fontSize: 16.0,
                                              )
                                          ),
                                          dense: true,
                                          checkColor: Colors.blue,
                                          activeColor: Colors.red,
                                          value: this.chkchariot,
                                          onChanged: (bool value) {
                                            setState(() {
                                              this.chkchariot = value;
                                            });
                                          },
                                          controlAffinity: ListTileControlAffinity.leading,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Container(
                                        width: 120.0,
                                        child: CheckboxListTile(
                                          contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                          title: Text('Formals',
                                              style: TextStyle(
                                                color: Colors.blue.shade600,
                                                fontFamily: "verdana" ,
                                                fontSize: 16.0,
                                              )
                                          ),
                                          dense: true,
                                          checkColor: Colors.blue,
                                          activeColor: Colors.red,
                                          value: this.chkchariot,
                                          onChanged: (bool value) {
                                            setState(() {
                                              this.chkchariot = value;
                                            });
                                          },
                                          controlAffinity: ListTileControlAffinity.leading,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5.0,
                                      ),
                                      Container(
                                        width: 210.0,
                                        child: CheckboxListTile(
                                          contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                          title: Text('Shirtless for Men',
                                              style: TextStyle(
                                                color: Colors.blue.shade600,
                                                fontFamily: "verdana" ,
                                                fontSize: 16.0,
                                              )
                                          ),
                                          dense: true,
                                          checkColor: Colors.blue,
                                          activeColor: Colors.red,
                                          value: this.chkchariot,
                                          onChanged: (bool value) {
                                            setState(() {
                                              this.chkchariot = value;
                                            });
                                          },
                                          controlAffinity: ListTileControlAffinity.leading,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Container(
                                        width: 120.0,
                                        child: CheckboxListTile(
                                          contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                          title: Text('Saree',
                                              style: TextStyle(
                                                color: Colors.blue.shade600,
                                                fontFamily: "verdana" ,
                                                fontSize: 16.0,
                                              )
                                          ),
                                          dense: true,
                                          checkColor: Colors.blue,
                                          activeColor: Colors.red,
                                          value: this.chkchariot,
                                          onChanged: (bool value) {
                                            setState(() {
                                              this.chkchariot = value;
                                            });
                                          },
                                          controlAffinity: ListTileControlAffinity.leading,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Container(
                                        width: 140.0,
                                        child: CheckboxListTile(
                                          contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                          title: Text('Churidhar',
                                              style: TextStyle(
                                                color: Colors.blue.shade600,
                                                fontFamily: "verdana" ,
                                                fontSize: 16.0,
                                              )
                                          ),
                                          dense: true,
                                          checkColor: Colors.blue,
                                          activeColor: Colors.red,
                                          value: this.chkchariot,
                                          onChanged: (bool value) {
                                            setState(() {
                                              this.chkchariot = value;
                                            });
                                          },
                                          controlAffinity: ListTileControlAffinity.leading,
                                        ),
                                      ),
                                    ],
                                  ),
                                ]
                            ),
                            SizedBox(
                              width: 5.0,
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
                                          navigateToPage: "/tirthaAgentSnippetDetails",
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


