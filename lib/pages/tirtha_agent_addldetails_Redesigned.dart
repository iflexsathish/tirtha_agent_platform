import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import '../GlobalVals.dart' as globals;
import '../methods/tirthaAddlDetails_method.dart' as tirthaAddlDetails;
import '../pages/agentCommons.dart' as commons;

class tirthaAgentAddlDetailsRed extends StatefulWidget {
  @override
  _tirthaAgentAddlDetailsRedState createState() => _tirthaAgentAddlDetailsRedState();
}

class _tirthaAgentAddlDetailsRedState extends State<tirthaAgentAddlDetailsRed> {

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
  bool chkchuridhar = false;

  final TextEditingController _tirthaSpecialityController = new TextEditingController();
  final TextEditingController _altitudeLevelController = new TextEditingController();
  final TextEditingController _trekDistanceMetricController = new TextEditingController();
  final TextEditingController _trekDistanceValueController = new TextEditingController();
  final TextEditingController _walkingDistanceMetricController = new TextEditingController();
  final TextEditingController _walkingDistanceValueController = new TextEditingController();
  final TextEditingController _stairsStepCountController = new TextEditingController();
  final TextEditingController _caveLengthMetricController = new TextEditingController();
  final TextEditingController _caveLengthValueController = new TextEditingController();
  final TextEditingController _caveDiameterMetricController = new TextEditingController();
  final TextEditingController _caveDiameterValueController = new TextEditingController();

  final TextEditingController _metriccontroller = new TextEditingController();
  var metricType = ['KILOMETERS','MILES','OTHERS'];

  final TextEditingController _complexitycontroller = new TextEditingController();
  var stepsComplexityType = ['HIGH', 'LOW', 'MEDIUM'];

  bool expState = false;

  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Container(
                width: 1260.0,
                height: 800.0,
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
                          // color: Colors.grey.shade200,
                          width: 1260.0,
                          // height: 200.0,
                          child: ExpansionPanelList(
                            expansionCallback: (int index, bool isExpanded) {
                              setState(() {
                                // isExpanded = !isExpanded;
                              });
                            },
                            children: [
                              ExpansionPanel(
                                headerBuilder: (BuildContext context, bool isExpanded){
                                  return ListTile(
                                    title: Text('Accessibility',
                                      style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0),
                                    ),
                                  );
                                } ,
                                body: Column(
                                  children: <Widget> [
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
                                            value: this.chkstairsinvolved,
                                            onChanged: (bool value) {
                                              setState(() {
                                                this.chkstairsinvolved = value;
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
                                              controller: _stairsStepCountController
                                                ..text = '232',
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
                                                        ..text = 'MEDIUM',
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
                                      height: 15.0,
                                    ),
                                    Row(
                                      children: [
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
                                              controller: _walkingDistanceValueController
                                                ..text = '200',
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
                                                      controller: _walkingDistanceMetricController
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
                                                  _walkingDistanceMetricController.text = value;
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
                                      height: 15.0,
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
                                            value: this.chktrekrequired,
                                            onChanged: (bool value) {
                                              setState(() {
                                                this.chktrekrequired = value;
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
                                              controller: _trekDistanceValueController
                                                ..text = '20',
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
                                                      controller: _trekDistanceMetricController
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
                                                  _trekDistanceMetricController.text = value;
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
                                          width: 15.0,
                                        ),
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
                                              controller: _altitudeLevelController
                                                ..text = '1300',
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
                                            value: this.chksurroundedbywater,
                                            onChanged: (bool value) {
                                              setState(() {
                                                this.chksurroundedbywater = value;
                                              });
                                            },
                                            controlAffinity: ListTileControlAffinity.leading,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 15.0,
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
                                            value: this.chkcaveinpassage,
                                            onChanged: (bool value) {
                                              setState(() {
                                                this.chkcaveinpassage = value;
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
                                              controller: _caveDiameterValueController
                                                ..text = '6',
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
                                                      controller: _caveDiameterMetricController
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
                                                  _caveDiameterMetricController.text = value;
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
                                              controller: _caveLengthValueController
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
                                                      controller: _caveLengthMetricController
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
                                                  _caveLengthMetricController.text = value;
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
                                  ],
                                ),
                                isExpanded: true,
                              ),
                              ExpansionPanel(
                                headerBuilder: (BuildContext context, bool isExpanded){
                                  return ListTile(
                                    title: Text('Dress Code',
                                      style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0),
                                    ),
                                  );
                                } ,
                                body: Column(
                                  children: <Widget> [
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 15.0,
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
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 15.0,
                                        ),
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
                                            value: this.chkdhoti,
                                            onChanged: (bool value) {
                                              setState(() {
                                                this.chkdhoti = value;
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
                                            value: this.chkformals,
                                            onChanged: (bool value) {
                                              setState(() {
                                                this.chkformals = value;
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
                                            value: this.chkshirtless,
                                            onChanged: (bool value) {
                                              setState(() {
                                                this.chkshirtless = value;
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
                                            value: this.chksaree,
                                            onChanged: (bool value) {
                                              setState(() {
                                                this.chksaree = value;
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
                                            value: this.chkchuridhar,
                                            onChanged: (bool value) {
                                              setState(() {
                                                this.chkchuridhar = value;
                                              });
                                            },
                                            controlAffinity: ListTileControlAffinity.leading,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                isExpanded: true,
                              ),
                              ExpansionPanel(
                                headerBuilder: (BuildContext context, bool isExpanded){
                                  return ListTile(
                                    title: Text('Services',
                                      style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0),
                                    ),
                                  );
                                } ,
                                body: Column(
                                  children: <Widget> [
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 15.0,
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
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 15.0,
                                        ),
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
                                            value: this.chkfreeacco,
                                            onChanged: (bool value) {
                                              setState(() {
                                                this.chkfreeacco = value;
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
                                            value: this.chkfreefood,
                                            onChanged: (bool value) {
                                              setState(() {
                                                this.chkfreefood = value;
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
                                            value: this.chkfreetransport,
                                            onChanged: (bool value) {
                                              setState(() {
                                                this.chkfreetransport = value;
                                              });
                                            },
                                            controlAffinity: ListTileControlAffinity.leading,
                                          ),
                                        ),

                                      ],
                                    ),
                                  ],
                                ),
                                isExpanded: false,
                              ),
                              ExpansionPanel(
                                headerBuilder: (BuildContext context, bool isExpanded){
                                  return ListTile(
                                    title: Text('Attractions',
                                      style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0),
                                    ),
                                  );
                                } ,
                                body: Column(
                                  children: <Widget> [
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 10.0,
                                        ),
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
                                            value: this.chkelephant,
                                            onChanged: (bool value) {
                                              setState(() {
                                                this.chkelephant = value;
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
                                            value: this.chkpondfish,
                                            onChanged: (bool value) {
                                              setState(() {
                                                this.chkpondfish = value;
                                              });
                                            },
                                            controlAffinity: ListTileControlAffinity.leading,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
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
                                            value: this.chkonseashore,
                                            onChanged: (bool value) {
                                              setState(() {
                                                this.chkonseashore = value;
                                              });
                                            },
                                            controlAffinity: ListTileControlAffinity.leading,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                isExpanded: false,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    // Row(
                    //   children: [
                    //     Container(
                    //       color: Colors.grey.shade200,
                    //       width: 1260.0,
                    //       height: 450.0,
                    //       alignment: Alignment.centerLeft,
                    //       padding: const EdgeInsets.fromLTRB(20, 15 , 0, 0),
                    //       child: Row(
                    //         children: [
                    //           Column  (
                    //               children: <Widget> [
                    //                 Container(
                    //                   width: 300.0,
                    //                   child: CheckboxListTile(
                    //                     contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    //                     title: Text('Temple Chariot',
                    //                         style: TextStyle(
                    //                           color: Colors.blue.shade600,
                    //                           fontFamily: "verdana" ,
                    //                           fontSize: 16.0,
                    //                         )
                    //                     ),
                    //                     dense: true,
                    //                     checkColor: Colors.blue,
                    //                     activeColor: Colors.red,
                    //                     value: this.chkchariot,
                    //                     onChanged: (bool value) {
                    //                       setState(() {
                    //                         this.chkchariot = value;
                    //                       });
                    //                     },
                    //                     controlAffinity: ListTileControlAffinity.leading,
                    //                   ),
                    //                 ),
                    //                 Container(
                    //                   width: 300.0,
                    //                   child: CheckboxListTile(
                    //                     contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    //                     title: Text('Kalyani/Pond',
                    //                         style: TextStyle(
                    //                           color: Colors.blue.shade600,
                    //                           fontFamily: "verdana" ,
                    //                           fontSize: 16.0,
                    //                         )
                    //                     ),
                    //                     dense: true,
                    //                     checkColor: Colors.blue,
                    //                     activeColor: Colors.red,
                    //                     value: this.chkpond,
                    //                     onChanged: (bool value) {
                    //                       setState(() {
                    //                         this.chkpond = value;
                    //                       });
                    //                     },
                    //                     controlAffinity: ListTileControlAffinity.leading,
                    //                   ),
                    //                 ),
                    //                 Container(
                    //                   width: 300.0,
                    //                   child: CheckboxListTile(
                    //                     contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    //                     title: Text('Weighing Scale',
                    //                         style: TextStyle(
                    //                           color: Colors.blue.shade600,
                    //                           fontFamily: "verdana" ,
                    //                           fontSize: 16.0,
                    //                         )
                    //                     ),
                    //                     dense: true,
                    //                     checkColor: Colors.blue,
                    //                     activeColor: Colors.red,
                    //                     value: this.chkweighingscale,
                    //                     onChanged: (bool value) {
                    //                       setState(() {
                    //                         this.chkweighingscale = value;
                    //                       });
                    //                     },
                    //                     controlAffinity: ListTileControlAffinity.leading,
                    //                   ),
                    //                 ),
                    //                 Container(
                    //                   width: 300.0,
                    //                   child: CheckboxListTile(
                    //                     contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    //                     title: Text('Prasadam',
                    //                         style: TextStyle(
                    //                           color: Colors.blue.shade600,
                    //                           fontFamily: "verdana" ,
                    //                           fontSize: 16.0,
                    //                         )
                    //                     ),
                    //                     dense: true,
                    //                     checkColor: Colors.blue,
                    //                     activeColor: Colors.red,
                    //                     value: this.chkprasadam,
                    //                     onChanged: (bool value) {
                    //                       setState(() {
                    //                         this.chkprasadam = value;
                    //                       });
                    //                     },
                    //                     controlAffinity: ListTileControlAffinity.leading,
                    //                   ),
                    //                 ),
                    //                 Container(
                    //                   width: 300.0,
                    //                   child: CheckboxListTile(
                    //                     contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    //                     title: Text('Hundi Service',
                    //                         style: TextStyle(
                    //                           color: Colors.blue.shade600,
                    //                           fontFamily: "verdana" ,
                    //                           fontSize: 16.0,
                    //                         )
                    //                     ),
                    //                     dense: true,
                    //                     checkColor: Colors.blue,
                    //                     activeColor: Colors.red,
                    //                     value: this.chkhundi,
                    //                     onChanged: (bool value) {
                    //                       setState(() {
                    //                         this.chkhundi = value;
                    //                       });
                    //                     },
                    //                     controlAffinity: ListTileControlAffinity.leading,
                    //                   ),
                    //                 ),
                    //                 Container(
                    //                   width: 300.0,
                    //                   child: CheckboxListTile(
                    //                     contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    //                     title: Text('Special/Quick Darshan',
                    //                         style: TextStyle(
                    //                           color: Colors.blue.shade600,
                    //                           fontFamily: "verdana" ,
                    //                           fontSize: 16.0,
                    //                         )
                    //                     ),
                    //                     dense: true,
                    //                     checkColor: Colors.blue,
                    //                     activeColor: Colors.red,
                    //                     value: this.chkspecialdarshan,
                    //                     onChanged: (bool value) {
                    //                       setState(() {
                    //                         this.chkspecialdarshan = value;
                    //                       });
                    //                     },
                    //                     controlAffinity: ListTileControlAffinity.leading,
                    //                   ),
                    //                 ),
                    //                 Container(
                    //                   width: 300.0,
                    //                   child: CheckboxListTile(
                    //                     contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    //                     title: Text('Dress Code Applicable',
                    //                         style: TextStyle(
                    //                           color: Colors.blue.shade600,
                    //                           fontFamily: "verdana" ,
                    //                           fontSize: 16.0,
                    //                         )
                    //                     ),
                    //                     dense: true,
                    //                     checkColor: Colors.blue,
                    //                     activeColor: Colors.red,
                    //                     value: this.chkdresscode,
                    //                     onChanged: (bool value) {
                    //                       setState(() {
                    //                         this.chkdresscode = value;
                    //                       });
                    //                     },
                    //                     controlAffinity: ListTileControlAffinity.leading,
                    //                   ),
                    //                 ),
                    //                 Container(
                    //                   width: 300.0,
                    //                   child: CheckboxListTile(
                    //                     contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    //                     title: Text('Temple Elephant',
                    //                         style: TextStyle(
                    //                           color: Colors.blue.shade600,
                    //                           fontFamily: "verdana" ,
                    //                           fontSize: 16.0,
                    //                         )
                    //                     ),
                    //                     dense: true,
                    //                     checkColor: Colors.blue,
                    //                     activeColor: Colors.red,
                    //                     value: this.chkelephant,
                    //                     onChanged: (bool value) {
                    //                       setState(() {
                    //                         this.chkelephant = value;
                    //                       });
                    //                     },
                    //                     controlAffinity: ListTileControlAffinity.leading,
                    //                   ),
                    //                 ),
                    //                 Container(
                    //                   width: 300.0,
                    //                   child: CheckboxListTile(
                    //                     contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    //                     title: Text('Pond Fish',
                    //                         style: TextStyle(
                    //                           color: Colors.blue.shade600,
                    //                           fontFamily: "verdana" ,
                    //                           fontSize: 16.0,
                    //                         )
                    //                     ),
                    //                     dense: true,
                    //                     checkColor: Colors.blue,
                    //                     activeColor: Colors.red,
                    //                     value: this.chkpondfish,
                    //                     onChanged: (bool value) {
                    //                       setState(() {
                    //                         this.chkpondfish = value;
                    //                       });
                    //                     },
                    //                     controlAffinity: ListTileControlAffinity.leading,
                    //                   ),
                    //                 ),
                    //               ]
                    //           ),
                    //           Column(
                    //               children: <Widget> [
                    //                 Row(
                    //                   children: [
                    //                     Container(
                    //                       width: 130.0,
                    //                       // height: 400.0,
                    //                       child: Text("Altitude Level",
                    //                           textAlign: TextAlign.left,
                    //                           style: TextStyle(
                    //                             color: Colors.blue.shade600,
                    //                             fontFamily: "verdana" ,
                    //                             fontSize: 16.0,
                    //                             fontWeight: FontWeight.bold,
                    //                           )),
                    //                     ),
                    //                     SizedBox(
                    //                       width: 5.0,
                    //                     ),
                    //                     Container(
                    //                       width: 100.0,
                    //                       height: 35.0,
                    //                       // height: 400.0,
                    //                       child: TextField(
                    //                         controller: _altitudeLevelController
                    //                           ..text = '1300',
                    //                           decoration: InputDecoration(
                    //                             border: OutlineInputBorder(
                    //                               borderSide: BorderSide.none,
                    //                             ),
                    //                             filled: true,
                    //                             fillColor: Colors.white,
                    //                             contentPadding: const EdgeInsets.only(
                    //                                 left: 10.0, bottom: 8.0, top: 8.0),
                    //                           ),
                    //                           style: TextStyle(
                    //                             //color: Colors.grey,
                    //                             backgroundColor: Colors.white38,
                    //                             fontFamily: "verdana" ,
                    //                             fontSize: 16.0,
                    //                             fontWeight: FontWeight.normal,
                    //                           )),
                    //                     ),
                    //                     SizedBox(
                    //                       width: 25.0,
                    //                     ),
                    //                     Container(
                    //                       width: 150.0,
                    //                       // height: 400.0,
                    //                       child: Text("Walking Distance",
                    //                           textAlign: TextAlign.left,
                    //                           style: TextStyle(
                    //                             color: Colors.blue.shade600,
                    //                             fontFamily: "verdana" ,
                    //                             fontSize: 16.0,
                    //                             fontWeight: FontWeight.bold,
                    //                           )),
                    //                     ),
                    //                     SizedBox(
                    //                       width: 5.0,
                    //                     ),
                    //                     Container(
                    //                       width: 100.0,
                    //                       height: 35.0,
                    //                       // height: 400.0,
                    //                       child: TextField(
                    //                         controller: _walkingDistanceValueController
                    //                           ..text = '200',
                    //                           decoration: InputDecoration(
                    //                             border: OutlineInputBorder(
                    //                               borderSide: BorderSide.none,
                    //                             ),
                    //                             filled: true,
                    //                             fillColor: Colors.white,
                    //                             contentPadding: const EdgeInsets.only(
                    //                                 left: 10.0, bottom: 8.0, top: 8.0),
                    //                           ),
                    //                           style: TextStyle(
                    //                             //color: Colors.grey,
                    //                             backgroundColor: Colors.white38,
                    //                             fontFamily: "verdana" ,
                    //                             fontSize: 16.0,
                    //                             fontWeight: FontWeight.normal,
                    //                           )),
                    //                     ),
                    //                     SizedBox(
                    //                       width: 5.0,
                    //                     ),
                    //                     Container(
                    //                       width: 180.0,
                    //                       height: 35.0,
                    //                       child: new Row(
                    //                         children: <Widget>[
                    //                           new Expanded(
                    //                               child: new TextField(
                    //                                   controller: _walkingDistanceMetricController
                    //                                     ..text = 'KILOMETERS',
                    //                                   decoration: InputDecoration(
                    //                                     border: OutlineInputBorder(
                    //                                       borderSide: BorderSide.none,
                    //                                     ),
                    //                                     filled: true,
                    //                                     fillColor: Colors.white,
                    //                                     contentPadding:
                    //                                     const EdgeInsets.only(
                    //                                         left: 10.0,
                    //                                         bottom: 8.0,
                    //                                         top: 8.0),
                    //                                   ),
                    //                                   style: TextStyle(
                    //                                     //color: Colors.grey,
                    //                                     backgroundColor: Colors.white38,
                    //                                     fontFamily: "verdana",
                    //                                     fontSize: 16.0,
                    //                                     fontWeight: FontWeight.normal,
                    //                                   ))),
                    //                           new PopupMenuButton<String>(
                    //                             icon: const Icon(Icons.arrow_drop_down),
                    //                             onSelected: (String value) {
                    //                               _walkingDistanceMetricController.text = value;
                    //                             },
                    //                             itemBuilder: (BuildContext context) {
                    //                               return metricType
                    //                                   .map<PopupMenuItem<String>>(
                    //                                       (String value) {
                    //                                     return new PopupMenuItem(
                    //                                         child: new Text(value),
                    //                                         value: value);
                    //                                   }).toList();
                    //                             },
                    //                           ),
                    //                         ],
                    //                       ),
                    //                     ),
                    //                   ],
                    //                 ),
                    //                 SizedBox(
                    //                   height: 15.0,
                    //                 ),
                    //                 Row(
                    //                   children: [
                    //                     Container(
                    //                       width: 200.0,
                    //                       child: CheckboxListTile(
                    //                         contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    //                         title: Text('Trek involved',
                    //                             style: TextStyle(
                    //                               color: Colors.blue.shade600,
                    //                               fontFamily: "verdana" ,
                    //                               fontSize: 16.0,
                    //                             )
                    //                         ),
                    //                         dense: true,
                    //                         checkColor: Colors.blue,
                    //                         activeColor: Colors.red,
                    //                         value: this.chktrekrequired,
                    //                         onChanged: (bool value) {
                    //                           setState(() {
                    //                             this.chktrekrequired = value;
                    //                           });
                    //                         },
                    //                         controlAffinity: ListTileControlAffinity.leading,
                    //                       ),
                    //                     ),
                    //                     SizedBox(
                    //                       width: 5.0,
                    //                     ),
                    //                     Container(
                    //                       width: 150.0,
                    //                       // height: 400.0,
                    //                       child: Text("Trekking Distance",
                    //                           textAlign: TextAlign.left,
                    //                           style: TextStyle(
                    //                             color: Colors.blue.shade600,
                    //                             fontFamily: "verdana" ,
                    //                             fontSize: 16.0,
                    //                             fontWeight: FontWeight.bold,
                    //                           )),
                    //                     ),
                    //                     SizedBox(
                    //                       width: 5.0,
                    //                     ),
                    //                     Container(
                    //                       width: 100.0,
                    //                       height: 35.0,
                    //                       // height: 400.0,
                    //                       child: TextField(
                    //                         controller: _trekDistanceValueController
                    //                           ..text = '20',
                    //                           decoration: InputDecoration(
                    //                             border: OutlineInputBorder(
                    //                               borderSide: BorderSide.none,
                    //                             ),
                    //                             filled: true,
                    //                             fillColor: Colors.white,
                    //                             contentPadding: const EdgeInsets.only(
                    //                                 left: 10.0, bottom: 8.0, top: 8.0),
                    //                           ),
                    //                           style: TextStyle(
                    //                             //color: Colors.grey,
                    //                             backgroundColor: Colors.white38,
                    //                             fontFamily: "verdana" ,
                    //                             fontSize: 16.0,
                    //                             fontWeight: FontWeight.normal,
                    //                           )),
                    //                     ),
                    //                     SizedBox(
                    //                       width: 5.0,
                    //                     ),
                    //                     Container(
                    //                       width: 180.0,
                    //                       height: 35.0,
                    //                       child: new Row(
                    //                         children: <Widget>[
                    //                           new Expanded(
                    //                               child: new TextField(
                    //                                   controller: _trekDistanceMetricController
                    //                                     ..text = 'KILOMETERS',
                    //                                   decoration: InputDecoration(
                    //                                     border: OutlineInputBorder(
                    //                                       borderSide: BorderSide.none,
                    //                                     ),
                    //                                     filled: true,
                    //                                     fillColor: Colors.white,
                    //                                     contentPadding:
                    //                                     const EdgeInsets.only(
                    //                                         left: 10.0,
                    //                                         bottom: 8.0,
                    //                                         top: 8.0),
                    //                                   ),
                    //                                   style: TextStyle(
                    //                                     //color: Colors.grey,
                    //                                     backgroundColor: Colors.white38,
                    //                                     fontFamily: "verdana",
                    //                                     fontSize: 16.0,
                    //                                     fontWeight: FontWeight.normal,
                    //                                   ))),
                    //                           new PopupMenuButton<String>(
                    //                             icon: const Icon(Icons.arrow_drop_down),
                    //                             onSelected: (String value) {
                    //                               _trekDistanceMetricController.text = value;
                    //                             },
                    //                             itemBuilder: (BuildContext context) {
                    //                               return metricType
                    //                                   .map<PopupMenuItem<String>>(
                    //                                       (String value) {
                    //                                     return new PopupMenuItem(
                    //                                         child: new Text(value),
                    //                                         value: value);
                    //                                   }).toList();
                    //                             },
                    //                           ),
                    //                         ],
                    //                       ),
                    //                     ),
                    //                   ],
                    //                 ),
                    //                 SizedBox(
                    //                   height: 15.0,
                    //                 ),
                    //                 Row(
                    //                   children: [
                    //                     Container(
                    //                       width: 200.0,
                    //                       child: CheckboxListTile(
                    //                         contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    //                         title: Text('Stairs involved',
                    //                             style: TextStyle(
                    //                               color: Colors.blue.shade600,
                    //                               fontFamily: "verdana" ,
                    //                               fontSize: 16.0,
                    //                             )
                    //                         ),
                    //                         dense: true,
                    //                         checkColor: Colors.blue,
                    //                         activeColor: Colors.red,
                    //                         value: this.chkstairsinvolved,
                    //                         onChanged: (bool value) {
                    //                           setState(() {
                    //                             this.chkstairsinvolved = value;
                    //                           });
                    //                         },
                    //                         controlAffinity: ListTileControlAffinity.leading,
                    //                       ),
                    //                     ),
                    //                     SizedBox(
                    //                       width: 5.0,
                    //                     ),
                    //                     Container(
                    //                       width: 100.0,
                    //                       // height: 400.0,
                    //                       child: Text("No of steps",
                    //                           textAlign: TextAlign.left,
                    //                           style: TextStyle(
                    //                             color: Colors.blue.shade600,
                    //                             fontFamily: "verdana" ,
                    //                             fontSize: 16.0,
                    //                             fontWeight: FontWeight.bold,
                    //                           )),
                    //                     ),
                    //                     SizedBox(
                    //                       width: 5.0,
                    //                     ),
                    //                     Container(
                    //                       width: 100.0,
                    //                       height: 35.0,
                    //                       // height: 400.0,
                    //                       child: TextField(
                    //                         controller: _stairsStepCountController
                    //                           ..text = '232',
                    //                           decoration: InputDecoration(
                    //                             border: OutlineInputBorder(
                    //                               borderSide: BorderSide.none,
                    //                             ),
                    //                             filled: true,
                    //                             fillColor: Colors.white,
                    //                             contentPadding: const EdgeInsets.only(
                    //                                 left: 10.0, bottom: 8.0, top: 8.0),
                    //                           ),
                    //                           style: TextStyle(
                    //                             //color: Colors.grey,
                    //                             backgroundColor: Colors.white38,
                    //                             fontFamily: "verdana" ,
                    //                             fontSize: 16.0,
                    //                             fontWeight: FontWeight.normal,
                    //                           )),
                    //                     ),
                    //                     SizedBox(
                    //                       width: 25.0,
                    //                     ),
                    //                     Container(
                    //                       width: 100.0,
                    //                       // height: 400.0,
                    //                       child: Text("Complexity",
                    //                           textAlign: TextAlign.left,
                    //                           style: TextStyle(
                    //                             color: Colors.blue.shade600,
                    //                             fontFamily: "verdana" ,
                    //                             fontSize: 16.0,
                    //                             fontWeight: FontWeight.bold,
                    //                           )),
                    //                     ),
                    //                     SizedBox(
                    //                       width: 5.0,
                    //                     ),
                    //                     Container(
                    //                       width: 200.0,
                    //                       height: 35.0,
                    //                       child: new Row(
                    //                         children: <Widget>[
                    //                           new Expanded(
                    //                               child: new TextField(
                    //                                   controller: _complexitycontroller
                    //                                     ..text = 'MEDIUM',
                    //                                   decoration: InputDecoration(
                    //                                     border: OutlineInputBorder(
                    //                                       borderSide: BorderSide.none,
                    //                                     ),
                    //                                     filled: true,
                    //                                     fillColor: Colors.white,
                    //                                     contentPadding:
                    //                                     const EdgeInsets.only(
                    //                                         left: 10.0,
                    //                                         bottom: 8.0,
                    //                                         top: 8.0),
                    //                                   ),
                    //                                   style: TextStyle(
                    //                                     //color: Colors.grey,
                    //                                     backgroundColor: Colors.white38,
                    //                                     fontFamily: "verdana",
                    //                                     fontSize: 16.0,
                    //                                     fontWeight: FontWeight.normal,
                    //                                   ))),
                    //                           new PopupMenuButton<String>(
                    //                             icon: const Icon(Icons.arrow_drop_down),
                    //                             onSelected: (String value) {
                    //                               _complexitycontroller.text = value;
                    //                             },
                    //                             itemBuilder: (BuildContext context) {
                    //                               return stepsComplexityType
                    //                                   .map<PopupMenuItem<String>>(
                    //                                       (String value) {
                    //                                     return new PopupMenuItem(
                    //                                         child: new Text(value),
                    //                                         value: value);
                    //                                   }).toList();
                    //                             },
                    //                           ),
                    //                         ],
                    //                       ),
                    //                     ),
                    //                   ],
                    //                 ),
                    //                 SizedBox(
                    //                   height: 15.0,
                    //                 ),
                    //                 Row(
                    //                   children: [
                    //                     Container(
                    //                       width: 150.0,
                    //                       child: CheckboxListTile(
                    //                         contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    //                         title: Text('Cave Entry',
                    //                             style: TextStyle(
                    //                               color: Colors.blue.shade600,
                    //                               fontFamily: "verdana" ,
                    //                               fontSize: 16.0,
                    //                             )
                    //                         ),
                    //                         dense: true,
                    //                         checkColor: Colors.blue,
                    //                         activeColor: Colors.red,
                    //                         value: this.chkcaveinpassage,
                    //                         onChanged: (bool value) {
                    //                           setState(() {
                    //                             this.chkcaveinpassage = value;
                    //                           });
                    //                         },
                    //                         controlAffinity: ListTileControlAffinity.leading,
                    //                       ),
                    //                     ),
                    //                     SizedBox(
                    //                       width: 25.0,
                    //                     ),
                    //                     Container(
                    //                       width: 80.0,
                    //                       // height: 400.0,
                    //                       child: Text("Diameter",
                    //                           textAlign: TextAlign.left,
                    //                           style: TextStyle(
                    //                             color: Colors.blue.shade600,
                    //                             fontFamily: "verdana" ,
                    //                             fontSize: 16.0,
                    //                             fontWeight: FontWeight.bold,
                    //                           )),
                    //                     ),
                    //                     Container(
                    //                       width: 75.0,
                    //                       height: 35.0,
                    //                       // height: 400.0,
                    //                       child: TextField(
                    //                         controller: _caveDiameterValueController
                    //                           ..text = '6',
                    //                           decoration: InputDecoration(
                    //                             border: OutlineInputBorder(
                    //                               borderSide: BorderSide.none,
                    //                             ),
                    //                             filled: true,
                    //                             fillColor: Colors.white,
                    //                             contentPadding: const EdgeInsets.only(
                    //                                 left: 10.0, bottom: 8.0, top: 8.0),
                    //                           ),
                    //                           style: TextStyle(
                    //                             //color: Colors.grey,
                    //                             backgroundColor: Colors.white38,
                    //                             fontFamily: "verdana" ,
                    //                             fontSize: 16.0,
                    //                             fontWeight: FontWeight.normal,
                    //                           )),
                    //                     ),
                    //                     SizedBox(
                    //                       width: 5.0,
                    //                     ),
                    //                     Container(
                    //                       width: 180.0,
                    //                       height: 35.0,
                    //                       child: new Row(
                    //                         children: <Widget>[
                    //                           new Expanded(
                    //                               child: new TextField(
                    //                                   controller: _caveDiameterMetricController
                    //                                     ..text = 'KILOMETERS',
                    //                                   decoration: InputDecoration(
                    //                                     border: OutlineInputBorder(
                    //                                       borderSide: BorderSide.none,
                    //                                     ),
                    //                                     filled: true,
                    //                                     fillColor: Colors.white,
                    //                                     contentPadding:
                    //                                     const EdgeInsets.only(
                    //                                         left: 10.0,
                    //                                         bottom: 8.0,
                    //                                         top: 8.0),
                    //                                   ),
                    //                                   style: TextStyle(
                    //                                     //color: Colors.grey,
                    //                                     backgroundColor: Colors.white38,
                    //                                     fontFamily: "verdana",
                    //                                     fontSize: 16.0,
                    //                                     fontWeight: FontWeight.normal,
                    //                                   ))),
                    //                           new PopupMenuButton<String>(
                    //                             icon: const Icon(Icons.arrow_drop_down),
                    //                             onSelected: (String value) {
                    //                               _caveDiameterMetricController.text = value;
                    //                             },
                    //                             itemBuilder: (BuildContext context) {
                    //                               return metricType
                    //                                   .map<PopupMenuItem<String>>(
                    //                                       (String value) {
                    //                                     return new PopupMenuItem(
                    //                                         child: new Text(value),
                    //                                         value: value);
                    //                                   }).toList();
                    //                             },
                    //                           ),
                    //                         ],
                    //                       ),
                    //                     ),
                    //                     SizedBox(
                    //                       width: 5.0,
                    //                     ),
                    //                     Container(
                    //                       width: 70.0,
                    //                       // height: 400.0,
                    //                       child: Text("Length",
                    //                           textAlign: TextAlign.left,
                    //                           style: TextStyle(
                    //                             color: Colors.blue.shade600,
                    //                             fontFamily: "verdana" ,
                    //                             fontSize: 16.0,
                    //                             fontWeight: FontWeight.bold,
                    //                           )),
                    //                     ),
                    //                     Container(
                    //                       width: 75.0,
                    //                       height: 35.0,
                    //                       // height: 400.0,
                    //                       child: TextField(
                    //                         controller: _caveLengthValueController
                    //                           ..text = '50',
                    //                           decoration: InputDecoration(
                    //                             border: OutlineInputBorder(
                    //                               borderSide: BorderSide.none,
                    //                             ),
                    //                             filled: true,
                    //                             fillColor: Colors.white,
                    //                             contentPadding: const EdgeInsets.only(
                    //                                 left: 10.0, bottom: 8.0, top: 8.0),
                    //                           ),
                    //                           style: TextStyle(
                    //                             //color: Colors.grey,
                    //                             backgroundColor: Colors.white38,
                    //                             fontFamily: "verdana" ,
                    //                             fontSize: 16.0,
                    //                             fontWeight: FontWeight.normal,
                    //                           )),
                    //                     ),
                    //                     SizedBox(
                    //                       width: 5.0,
                    //                     ),
                    //                     Container(
                    //                       width: 180.0,
                    //                       height: 35.0,
                    //                       child: new Row(
                    //                         children: <Widget>[
                    //                           new Expanded(
                    //                               child: new TextField(
                    //                                   controller: _caveLengthMetricController
                    //                                     ..text = 'KILOMETERS',
                    //                                   decoration: InputDecoration(
                    //                                     border: OutlineInputBorder(
                    //                                       borderSide: BorderSide.none,
                    //                                     ),
                    //                                     filled: true,
                    //                                     fillColor: Colors.white,
                    //                                     contentPadding:
                    //                                     const EdgeInsets.only(
                    //                                         left: 10.0,
                    //                                         bottom: 8.0,
                    //                                         top: 8.0),
                    //                                   ),
                    //                                   style: TextStyle(
                    //                                     //color: Colors.grey,
                    //                                     backgroundColor: Colors.white38,
                    //                                     fontFamily: "verdana",
                    //                                     fontSize: 16.0,
                    //                                     fontWeight: FontWeight.normal,
                    //                                   ))),
                    //                           new PopupMenuButton<String>(
                    //                             icon: const Icon(Icons.arrow_drop_down),
                    //                             onSelected: (String value) {
                    //                               _caveLengthMetricController.text = value;
                    //                             },
                    //                             itemBuilder: (BuildContext context) {
                    //                               return metricType
                    //                                   .map<PopupMenuItem<String>>(
                    //                                       (String value) {
                    //                                     return new PopupMenuItem(
                    //                                         child: new Text(value),
                    //                                         value: value);
                    //                                   }).toList();
                    //                             },
                    //                           ),
                    //                         ],
                    //                       ),
                    //                     ),
                    //                   ],
                    //                 ),
                    //                 SizedBox(
                    //                   height: 15.0,
                    //                 ),
                    //                 Row(
                    //                   children: [
                    //                     Container(
                    //                       width: 140.0,
                    //                       child: CheckboxListTile(
                    //                         contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    //                         title: Text('Free Acco',
                    //                             style: TextStyle(
                    //                               color: Colors.blue.shade600,
                    //                               fontFamily: "verdana" ,
                    //                               fontSize: 16.0,
                    //                             )
                    //                         ),
                    //                         dense: true,
                    //                         checkColor: Colors.blue,
                    //                         activeColor: Colors.red,
                    //                         value: this.chkfreeacco,
                    //                         onChanged: (bool value) {
                    //                           setState(() {
                    //                             this.chkfreeacco = value;
                    //                           });
                    //                         },
                    //                         controlAffinity: ListTileControlAffinity.leading,
                    //                       ),
                    //                     ),
                    //                     SizedBox(
                    //                       width: 10.0,
                    //                     ),
                    //                     Container(
                    //                       width: 140.0,
                    //                       child: CheckboxListTile(
                    //                         contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    //                         title: Text('Free Food',
                    //                             style: TextStyle(
                    //                               color: Colors.blue.shade600,
                    //                               fontFamily: "verdana" ,
                    //                               fontSize: 16.0,
                    //                             )
                    //                         ),
                    //                         dense: true,
                    //                         checkColor: Colors.blue,
                    //                         activeColor: Colors.red,
                    //                         value: this.chkfreefood,
                    //                         onChanged: (bool value) {
                    //                           setState(() {
                    //                             this.chkfreefood = value;
                    //                           });
                    //                         },
                    //                         controlAffinity: ListTileControlAffinity.leading,
                    //                       ),
                    //                     ),
                    //                     SizedBox(
                    //                       width: 10.0,
                    //                     ),
                    //                     Container(
                    //                       width: 180.0,
                    //                       child: CheckboxListTile(
                    //                         contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    //                         title: Text('Free Transport',
                    //                             style: TextStyle(
                    //                               color: Colors.blue.shade600,
                    //                               fontFamily: "verdana" ,
                    //                               fontSize: 16.0,
                    //                             )
                    //                         ),
                    //                         dense: true,
                    //                         checkColor: Colors.blue,
                    //                         activeColor: Colors.red,
                    //                         value: this.chkfreetransport,
                    //                         onChanged: (bool value) {
                    //                           setState(() {
                    //                             this.chkfreetransport = value;
                    //                           });
                    //                         },
                    //                         controlAffinity: ListTileControlAffinity.leading,
                    //                       ),
                    //                     ),
                    //                     SizedBox(
                    //                       width: 10.0,
                    //                     ),
                    //                     Container(
                    //                       width: 170.0,
                    //                       child: CheckboxListTile(
                    //                         contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    //                         title: Text('On Seashore',
                    //                             style: TextStyle(
                    //                               color: Colors.blue.shade600,
                    //                               fontFamily: "verdana" ,
                    //                               fontSize: 16.0,
                    //                             )
                    //                         ),
                    //                         dense: true,
                    //                         checkColor: Colors.blue,
                    //                         activeColor: Colors.red,
                    //                         value: this.chkonseashore,
                    //                         onChanged: (bool value) {
                    //                           setState(() {
                    //                             this.chkonseashore = value;
                    //                           });
                    //                         },
                    //                         controlAffinity: ListTileControlAffinity.leading,
                    //                       ),
                    //                     ),
                    //                     SizedBox(
                    //                       width: 10.0,
                    //                     ),
                    //                     Container(
                    //                       width: 150.0,
                    //                       child: CheckboxListTile(
                    //                         contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    //                         title: Text('Island',
                    //                             style: TextStyle(
                    //                               color: Colors.blue.shade600,
                    //                               fontFamily: "verdana" ,
                    //                               fontSize: 16.0,
                    //                             )
                    //                         ),
                    //                         dense: true,
                    //                         checkColor: Colors.blue,
                    //                         activeColor: Colors.red,
                    //                         value: this.chksurroundedbywater,
                    //                         onChanged: (bool value) {
                    //                           setState(() {
                    //                             this.chksurroundedbywater = value;
                    //                           });
                    //                         },
                    //                         controlAffinity: ListTileControlAffinity.leading,
                    //                       ),
                    //                     ),
                    //                   ],
                    //                 ),
                    //                 SizedBox(
                    //                   height: 15.0,
                    //                 ),
                    //                 Row(
                    //                   children: [
                    //                     Container(
                    //                       width: 110.0,
                    //                       // height: 400.0,
                    //                       child: Text("Dress Code",
                    //                           textAlign: TextAlign.left,
                    //                           style: TextStyle(
                    //                             color: Colors.blue.shade600,
                    //                             fontFamily: "verdana" ,
                    //                             fontSize: 16.0,
                    //                             fontWeight: FontWeight.bold,
                    //                           )),
                    //                     ),
                    //                     SizedBox(
                    //                       width: 5.0,
                    //                     ),
                    //                     Container(
                    //                       width: 100.0,
                    //                       child: CheckboxListTile(
                    //                         contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    //                         title: Text('Dhoti',
                    //                             style: TextStyle(
                    //                               color: Colors.blue.shade600,
                    //                               fontFamily: "verdana" ,
                    //                               fontSize: 16.0,
                    //                             )
                    //                         ),
                    //                         dense: true,
                    //                         checkColor: Colors.blue,
                    //                         activeColor: Colors.red,
                    //                         value: this.chkdhoti,
                    //                         onChanged: (bool value) {
                    //                           setState(() {
                    //                             this.chkdhoti = value;
                    //                           });
                    //                         },
                    //                         controlAffinity: ListTileControlAffinity.leading,
                    //                       ),
                    //                     ),
                    //                     SizedBox(
                    //                       width: 10.0,
                    //                     ),
                    //                     Container(
                    //                       width: 120.0,
                    //                       child: CheckboxListTile(
                    //                         contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    //                         title: Text('Formals',
                    //                             style: TextStyle(
                    //                               color: Colors.blue.shade600,
                    //                               fontFamily: "verdana" ,
                    //                               fontSize: 16.0,
                    //                             )
                    //                         ),
                    //                         dense: true,
                    //                         checkColor: Colors.blue,
                    //                         activeColor: Colors.red,
                    //                         value: this.chkformals,
                    //                         onChanged: (bool value) {
                    //                           setState(() {
                    //                             this.chkformals = value;
                    //                           });
                    //                         },
                    //                         controlAffinity: ListTileControlAffinity.leading,
                    //                       ),
                    //                     ),
                    //                     SizedBox(
                    //                       width: 5.0,
                    //                     ),
                    //                     Container(
                    //                       width: 210.0,
                    //                       child: CheckboxListTile(
                    //                         contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    //                         title: Text('Shirtless for Men',
                    //                             style: TextStyle(
                    //                               color: Colors.blue.shade600,
                    //                               fontFamily: "verdana" ,
                    //                               fontSize: 16.0,
                    //                             )
                    //                         ),
                    //                         dense: true,
                    //                         checkColor: Colors.blue,
                    //                         activeColor: Colors.red,
                    //                         value: this.chkshirtless,
                    //                         onChanged: (bool value) {
                    //                           setState(() {
                    //                             this.chkshirtless = value;
                    //                           });
                    //                         },
                    //                         controlAffinity: ListTileControlAffinity.leading,
                    //                       ),
                    //                     ),
                    //                     SizedBox(
                    //                       width: 10.0,
                    //                     ),
                    //                     Container(
                    //                       width: 120.0,
                    //                       child: CheckboxListTile(
                    //                         contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    //                         title: Text('Saree',
                    //                             style: TextStyle(
                    //                               color: Colors.blue.shade600,
                    //                               fontFamily: "verdana" ,
                    //                               fontSize: 16.0,
                    //                             )
                    //                         ),
                    //                         dense: true,
                    //                         checkColor: Colors.blue,
                    //                         activeColor: Colors.red,
                    //                         value: this.chksaree,
                    //                         onChanged: (bool value) {
                    //                           setState(() {
                    //                             this.chksaree = value;
                    //                           });
                    //                         },
                    //                         controlAffinity: ListTileControlAffinity.leading,
                    //                       ),
                    //                     ),
                    //                     SizedBox(
                    //                       width: 10.0,
                    //                     ),
                    //                     Container(
                    //                       width: 140.0,
                    //                       child: CheckboxListTile(
                    //                         contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    //                         title: Text('Churidhar',
                    //                             style: TextStyle(
                    //                               color: Colors.blue.shade600,
                    //                               fontFamily: "verdana" ,
                    //                               fontSize: 16.0,
                    //                             )
                    //                         ),
                    //                         dense: true,
                    //                         checkColor: Colors.blue,
                    //                         activeColor: Colors.red,
                    //                         value: this.chkchuridhar,
                    //                         onChanged: (bool value) {
                    //                           setState(() {
                    //                             this.chkchuridhar = value;
                    //                           });
                    //                         },
                    //                         controlAffinity: ListTileControlAffinity.leading,
                    //                       ),
                    //                     ),
                    //                   ],
                    //                 ),
                    //                 SizedBox(
                    //                   height: 15.0,
                    //                 ),
                    //                 Row(
                    //                   children: [
                    //                     SizedBox(
                    //                       width: 700.0,
                    //                     ),
                    //                     Column(
                    //                       children: [
                    //                         Container(
                    //                           width: 150.0,
                    //                           height: 40.0,
                    //                           child: ClipRRect(
                    //                             borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    //                             child: MaterialButton(
                    //                               onPressed: () async {
                    //
                    //                                 List<String> animalList = [];
                    //
                    //                                 if (this.chkelephant) {
                    //                                   animalList.add("ELEPHANT");
                    //                                 }
                    //                                 if (this.chkpondfish) {
                    //                                   animalList.add("FISH");
                    //                                 }
                    //
                    //                                 List<String> dressCodeList = [];
                    //
                    //                                 if (this.chkdhoti) {
                    //                                   dressCodeList.add("DHOTI");
                    //                                 }
                    //                                 if (this.chkformals) {
                    //                                   dressCodeList.add("FORMALS");
                    //                                 }
                    //                                 if (this.chkshirtless) {
                    //                                   dressCodeList.add("SHIRTLESS");
                    //                                 }
                    //                                 if (this.chksaree) {
                    //                                   dressCodeList.add("SAREE");
                    //                                 }
                    //                                 if (this.chkchuridhar) {
                    //                                   dressCodeList.add("CHURIDHAR");
                    //                                 }
                    //
                    //                                 var stairsCount =
                    //                                     int.parse(_stairsStepCountController.text);
                    //                                 assert(stairsCount is int);
                    //
                    //                                 var caveDiameterValue =
                    //                                 int.parse(_caveDiameterValueController.text);
                    //                                 assert(caveDiameterValue is int);
                    //
                    //                                 var caveLengthValue =
                    //                                 int.parse(_caveLengthValueController.text);
                    //                                 assert(caveLengthValue is int);
                    //
                    //                                 var trekDistanceValue =
                    //                                 int.parse(_trekDistanceValueController.text);
                    //                                 assert(trekDistanceValue is int);
                    //
                    //                                 var walkingDistanceValue =
                    //                                 int.parse(_walkingDistanceValueController.text);
                    //                                 assert(walkingDistanceValue is int);
                    //
                    //                                 final String responseCode =
                    //                                 await tirthaAddlDetails.saveTirthaAddlDetails(
                    //                                     _altitudeLevelController.text,
                    //                                     animalList,
                    //                                     caveDiameterValue,
                    //                                     _caveDiameterMetricController.text,
                    //                                     this.chkcaveinpassage,
                    //                                     caveLengthValue,
                    //                                     _caveLengthMetricController.text,
                    //                                     this.chkchariot,
                    //                                     this.chkdresscode,
                    //                                     dressCodeList,
                    //                                     this.chkfreeacco,
                    //                                     this.chkfreefood,
                    //                                     this.chkfreetransport,
                    //                                     this.chkhundi,
                    //                                     this.chkpond,
                    //                                     this.chkonseashore,
                    //                                     this.chkprasadam,
                    //                                     this.chkspecialdarshan,
                    //                                     "TO BE FILLED LATER",
                    //                                     stairsCount,
                    //                                     _complexitycontroller.text,
                    //                                     this.chkstairsinvolved,
                    //                                     this.chksurroundedbywater,
                    //                                     trekDistanceValue,
                    //                                     _trekDistanceMetricController.text,
                    //                                     this.chktrekrequired,
                    //                                     walkingDistanceValue,
                    //                                     _walkingDistanceMetricController.text,
                    //                                     this.chkweighingscale
                    //                                 );
                    //
                    //                                 print(
                    //                                     'saveTirthaSeva Called - AFTER');
                    //
                    //                                 if (responseCode == "200" || responseCode == "201") {
                    //                                   return showDialog(
                    //                                     context: context,
                    //                                     builder: (ctx) => AlertDialog(
                    //                                       title: Text("Tirtha - Alert"),
                    //                                       content: Text("Additional Details saved successfully for Tirtha Id: " + globals.tirthaId),
                    //                                       actions: <Widget>[
                    //                                         FlatButton(
                    //                                           onPressed: () {
                    //                                             Navigator.of(ctx).pop();
                    //                                           },
                    //                                           child: Text("OK"),
                    //                                         ),
                    //                                       ],
                    //                                     ),
                    //                                   );
                    //                                 } else {
                    //                                   return showDialog(
                    //                                     context: context,
                    //                                     builder: (ctx) => AlertDialog(
                    //                                       title: Text("Tirtha - Alert"),
                    //                                       content: Text("Additional details failed to save."),
                    //                                       actions: <Widget>[
                    //                                         FlatButton(
                    //                                           onPressed: () {
                    //                                             Navigator.of(ctx).pop();
                    //                                           },
                    //                                           child: Text("OK"),
                    //                                         ),
                    //                                       ],
                    //                                     ),
                    //                                   );
                    //                                 }
                    //
                    //                                 //dynamic result = await Navigator.pushNamed(context, '/tirthaAgentMainInfo');
                    //                               },
                    //                               minWidth: 50.0,
                    //                               height: 50.0,
                    //                               color: const Color(0x7EE31A1A).withOpacity(0.5),
                    //                               child: Text(
                    //                                 "Save Details",
                    //                                 style: TextStyle(
                    //                                   fontSize: 18.0,
                    //                                   fontFamily: "verdana",
                    //                                   fontWeight: FontWeight.bold,
                    //                                   color: Colors.white,
                    //                                 ),
                    //                               ),
                    //                             ),
                    //                           ),
                    //                         ),
                    //                       ],
                    //                     ),
                    //                   ],
                    //                 ),
                    //                 SizedBox(
                    //                   width: 5.0,
                    //                 ),
                    //               ]
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    SizedBox(
                      height: 225.0,
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
                                            navigateToPage: "/tirthaAgentAddlDetailsRed",
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
      ),
    );
  }
}


