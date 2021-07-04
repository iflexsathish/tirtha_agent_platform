import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import '../pages/agentCommons.dart' as commons;
import '../models/tirtha_model.dart';
import '../methods/tirthaMaininfo_method.dart' as tirthaMain;
import '../GlobalVals.dart' as globals;

class tirthaAgentMainInfo extends StatefulWidget {
  @override
  _tirthaAgentMainInfoState createState() => _tirthaAgentMainInfoState();
}

class _tirthaAgentMainInfoState extends State<tirthaAgentMainInfo> {
  TirthaModel _tirtha;

  final String tirthaId = 'none';

  final TextEditingController _addresscontroller = new TextEditingController();
  var addressType = ['BUSINESS', 'PERMANENT', 'CURRENT', 'HOME'];

  final TextEditingController _rcontroller = new TextEditingController();
  var religion = [
    'Hinduism',
    'Sikhism',
    'Christianity',
    'Islam',
    'Buddhism',
    'Jainism'
  ];

  final TextEditingController _pcontroller = new TextEditingController();
  var pDeity = [
    'Shiva',
    'Vishnu',
    'Ganesha',
    'Subramaniya',
    'Durga',
    'Lakshmi',
    'Saraswathi'
  ];

  final TextEditingController _scontroller = new TextEditingController();
  var sDeity = [
    'Shiva',
    'Vishnu',
    'Ganesha',
    'Subramaniya',
    'Durga',
    'Lakshmi',
    'Saraswathi',
    'Brahma',
    'Shanishwar',
    'Sai baba'
  ];

  @override
  final TextEditingController _nameController = new TextEditingController();
  final TextEditingController _addr1Controller = new TextEditingController();
  final TextEditingController _addr2Controller = new TextEditingController();
  final TextEditingController _stateController = new TextEditingController();
  final TextEditingController _districtController = new TextEditingController();
  final TextEditingController _cityController = new TextEditingController();
  final TextEditingController _pincodeController = new TextEditingController();
  final TextEditingController _locationController = new TextEditingController();
  final TextEditingController _estdDateController = new TextEditingController();
  final TextEditingController _purposeController = new TextEditingController();
  final TextEditingController _openTime1Controller =  new TextEditingController();
  final TextEditingController _closeTime1Controller =  new TextEditingController();
  final TextEditingController _openTime2Controller =  new TextEditingController();
  final TextEditingController _closeTime2Controller =  new TextEditingController();
  final TextEditingController _notesController = new TextEditingController();

  final TextEditingController _tirthaIdController = new TextEditingController();

  TimeOfDay selOT1Time = TimeOfDay.now();
  TimeOfDay selCT1Time = TimeOfDay.now();
  TimeOfDay selOT2Time = TimeOfDay.now();
  TimeOfDay selCT2Time = TimeOfDay.now();

  void _selOT1Time() async {
    final TimeOfDay newTime = await showTimePicker(
      context: context,
      initialTime: selOT1Time,
    );
    if (newTime != null) {
      setState(() {
        selOT1Time = newTime;
        String fromTimeHour = selOT1Time.hour.toString();
        String fromTimeMin = selOT1Time.minute.toString();

        int hourLength = fromTimeHour.length;
        int minLength = fromTimeMin.length;

        if (hourLength == 1 ){
          fromTimeHour = "0" + fromTimeHour;
        }

        if (minLength == 1 ){
          fromTimeMin = fromTimeMin + "0";
        }
        _openTime1Controller.text = fromTimeHour + ':' + fromTimeMin;
        // _sevafromController.text = formatDate(
        //     DateTime(2019, 08, 1, selectedTime.hour, selectedTime.minute),
        //     [hh, ':', nn, " ", am]).toString();
      });
    }
  }
  void _selCT1Time() async {
    final TimeOfDay newTime = await showTimePicker(
      context: context,
      initialTime: selCT1Time,
    );
    if (newTime != null) {
      setState(() {
        selCT1Time = newTime;
        String fromTimeHour = selCT1Time.hour.toString();
        String fromTimeMin = selCT1Time.minute.toString();

        int hourLength = fromTimeHour.length;
        int minLength = fromTimeMin.length;

        if (hourLength == 1 ){
          fromTimeHour = "0" + fromTimeHour;
        }

        if (minLength == 1 ){
          fromTimeMin = fromTimeMin + "0";
        }
        _closeTime1Controller.text = fromTimeHour + ':' + fromTimeMin;
        //_sevatoController.text = selSevaToTime.hour.toString() + ':' + selSevaToTime.minute.toString();
        // _sevafromController.text = formatDate(
        //     DateTime(2019, 08, 1, selectedTime.hour, selectedTime.minute),
        //     [hh, ':', nn, " ", am]).toString();
      });
    }
  }
  void _selOT2Time() async {
    final TimeOfDay newTime = await showTimePicker(
      context: context,
      initialTime: selOT2Time,
    );
    if (newTime != null) {
      setState(() {
        selOT2Time = newTime;
        String fromTimeHour = selOT2Time.hour.toString();
        String fromTimeMin = selOT2Time.minute.toString();

        int hourLength = fromTimeHour.length;
        int minLength = fromTimeMin.length;

        if (hourLength == 1 ){
          fromTimeHour = "0" + fromTimeHour;
        }

        if (minLength == 1 ){
          fromTimeMin = fromTimeMin + "0";
        }
        _openTime2Controller.text = fromTimeHour + ':' + fromTimeMin;
        // _sevafromController.text = formatDate(
        //     DateTime(2019, 08, 1, selectedTime.hour, selectedTime.minute),
        //     [hh, ':', nn, " ", am]).toString();
      });
    }
  }
  void _selCT2Time() async {
    final TimeOfDay newTime = await showTimePicker(
      context: context,
      initialTime: selCT2Time,
    );
    if (newTime != null) {
      setState(() {
        selCT2Time = newTime;
        String fromTimeHour = selCT2Time.hour.toString();
        String fromTimeMin = selCT2Time.minute.toString();

        int hourLength = fromTimeHour.length;
        int minLength = fromTimeMin.length;

        if (hourLength == 1 ){
          fromTimeHour = "0" + fromTimeHour;
        }

        if (minLength == 1 ){
          fromTimeMin = fromTimeMin + "0";
        }
        _closeTime2Controller.text = fromTimeHour + ':' + fromTimeMin;
        //_sevatoController.text = selSevaToTime.hour.toString() + ':' + selSevaToTime.minute.toString();
        // _sevafromController.text = formatDate(
        //     DateTime(2019, 08, 1, selectedTime.hour, selectedTime.minute),
        //     [hh, ':', nn, " ", am]).toString();
      });
    }
  }

  //controller: t1Controller,

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
                  //Main Info Row
                  commons.agentTitleBar(
                    titleText: "Main Information",
                  ),
                  //Name Section
                  Row(
                    children: [
                      Container(
                        color: Colors.grey.shade200,
                        width: 1260.0,
                        height: 60.0,
                        //alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.fromLTRB(20, 15, 0, 0),
                        child: Row(
                          children: [
                            Column(children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 80.0,
                                  child: Text("Name",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Colors.blue.shade600,
                                        fontFamily: "verdana",
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                              ),
                            ]),
                            SizedBox(
                              width: 5.0,
                            ),
                            Column(children: <Widget>[
                              Container(
                                width: 500.0,
                                height: 35.0,
                                child: TextField(
                                    controller: _nameController
                                      ..text = 'Venkateswara',
                                    //controller: _nameController,
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
                                      fontFamily: "verdana",
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.normal,
                                    )),
                              ),
                            ]),
                            SizedBox(
                              width: 25.0,
                            ),
                            Column(children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 80.0,
                                  child: Text("Location",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Colors.blue.shade600,
                                        fontFamily: "verdana",
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                              ),
                            ]),
                            SizedBox(
                              width: 5.0,
                            ),
                            Column(children: <Widget>[
                              Container(
                                width: 350.0,
                                height: 35.0,
                                child: TextField(
                                    controller: _locationController
                                      ..text = '10001',
                                    //controller: _locationController,
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
                                      fontFamily: "verdana",
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.normal,
                                    )),
                              ),
                            ]),
                          ],
                        ),
                      ),
                    ],
                  ),
                  //Address section
                  Row(
                    children: [
                      Container(
                        color: Colors.grey.shade200,
                        width: 1260.0,
                        height: 45.0,
                        //alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 5.0,
                            ),
                            Column(children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 85.0,
                                  child: Text("Address1",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Colors.blue.shade600,
                                        fontFamily: "verdana",
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                              ),
                            ]),
                            SizedBox(
                              width: 5.0,
                            ),
                            Column(children: <Widget>[
                              Container(
                                width: 500.0,
                                height: 35.0,
                                child: TextField(
                                  //controller: _addr1Controller,
                                    controller: _addr1Controller
                                      ..text = 'Address Line 1',
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
                                      fontFamily: "verdana",
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.normal,
                                    )),
                              ),
                            ]),
                            SizedBox(
                              width: 25.0,
                            ),
                            Column(children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 80.0,
                                  child: Text("District",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Colors.blue.shade600,
                                        fontFamily: "verdana",
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                              ),
                            ]),
                            SizedBox(
                              width: 5.0,
                            ),
                            Column(children: <Widget>[
                              Container(
                                width: 350.0,
                                height: 35.0,
                                child: TextField(
                                  //controller: _districtController,
                                    controller: _districtController
                                      ..text = 'Tirupati District',
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
                                      fontFamily: "verdana",
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.normal,
                                    )),
                              ),
                            ]),
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
                        height: 45.0,
                        //alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 5.0,
                            ),
                            Column(children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 85.0,
                                  child: Text("Address2",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Colors.blue.shade600,
                                        fontFamily: "verdana",
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                              ),
                            ]),
                            SizedBox(
                              width: 5.0,
                            ),
                            Column(children: <Widget>[
                              Container(
                                width: 500.0,
                                height: 35.0,
                                child: TextField(
                                  //controller: _addr2Controller,
                                    controller: _addr2Controller
                                      ..text = 'Address Line 2',
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
                                      fontFamily: "verdana",
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.normal,
                                    )),
                              ),
                            ]),
                            SizedBox(
                              width: 25.0,
                            ),
                            Column(children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 80.0,
                                  child: Text("City",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Colors.blue.shade600,
                                        fontFamily: "verdana",
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                              ),
                            ]),
                            SizedBox(
                              width: 5.0,
                            ),
                            Column(children: <Widget>[
                              Container(
                                width: 350.0,
                                height: 35.0,
                                child: TextField(
                                  //controller: _cityController,
                                    controller: _cityController
                                      ..text = 'Tirupati',
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
                                      fontFamily: "verdana",
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.normal,
                                    )),
                              ),
                            ]),
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
                        height: 45.0,
                        //alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 5.0,
                            ),
                            Column(children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 85.0,
                                  child: Text("State",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Colors.blue.shade600,
                                        fontFamily: "verdana",
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                              ),
                            ]),
                            SizedBox(
                              width: 5.0,
                            ),
                            Column(children: <Widget>[
                              Container(
                                width: 250.0,
                                height: 35.0,
                                child: TextField(
                                  //controller: _stateController,
                                    controller: _stateController..text = 'AP',
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
                                      fontFamily: "verdana",
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.normal,
                                    )),
                              ),
                            ]),
                            SizedBox(
                              width: 5.0,
                            ),
                            Column(children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 80.0,
                                  child: Text("Pincode",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Colors.blue.shade600,
                                        fontFamily: "verdana",
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                              ),
                            ]),
                            // SizedBox(
                            //   width: 5.0,
                            // ),
                            Column(children: <Widget>[
                              Container(
                                width: 150.0,
                                height: 35.0,
                                child: TextField(
                                  //controller: _pincodeController,
                                    controller: _pincodeController
                                      ..text = '564998',
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
                                      fontFamily: "verdana",
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.normal,
                                    )),
                              ),
                            ]),
                            SizedBox(
                              width: 25.0,
                            ),
                            Column(children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 100.0,
                                  child: Text("Addr Type",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Colors.blue.shade600,
                                        fontFamily: "verdana",
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                              ),
                            ]),
                            Column(children: <Widget>[
                              Container(
                                width: 300.0,
                                height: 35.0,
                                child: new Row(
                                  children: <Widget>[
                                    new Expanded(
                                        child: new TextField(
                                          //controller: _addresscontroller,
                                            controller: _addresscontroller
                                              ..text = 'BUSINESS',
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
                                        _addresscontroller.text = value;
                                      },
                                      itemBuilder: (BuildContext context) {
                                        return addressType
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
                            ]),
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
                        color: Colors.grey.shade200,
                        width: 1260.0,
                        height: 60.0,
                        //alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.fromLTRB(20, 15, 0, 0),
                        child: Row(
                          children: [
                            //Religion
                            Column(children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 80.0,
                                  child: Text("Religion",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Colors.blue.shade600,
                                        fontFamily: "verdana",
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                              ),
                            ]),
                            SizedBox(
                              width: 5.0,
                            ),
                            Column(children: <Widget>[
                              Container(
                                width: 200.0,
                                height: 35.0,
                                child: new Row(
                                  children: <Widget>[
                                    new Expanded(
                                        child: new TextField(
                                          //controller: _rcontroller,
                                            controller: _rcontroller
                                              ..text = 'Hinduism',
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
                                        _rcontroller.text = value;
                                      },
                                      itemBuilder: (BuildContext context) {
                                        return religion
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
                            ]),
                            SizedBox(
                              width: 25.0,
                            ),
                            //Primary Deity
                            Column(children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 150.0,
                                  child: Text("Primary Deity",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Colors.blue.shade600,
                                        fontFamily: "verdana",
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                              ),
                            ]),
                            SizedBox(
                              width: 5.0,
                            ),
                            Column(children: <Widget>[
                              Container(
                                width: 250.0,
                                height: 35.0,
                                child: new Row(
                                  children: <Widget>[
                                    new Expanded(
                                        child: new TextField(
                                          //controller: _pcontroller,
                                            controller: _pcontroller
                                              ..text = 'Vishnu',
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
                                        _pcontroller.text = value;
                                      },
                                      itemBuilder: (BuildContext context) {
                                        return pDeity
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
                            ]),
                            SizedBox(
                              width: 5.0,
                            ),
                            //Secondary Deity
                            Column(children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 150.0,
                                  child: Text("Secondary Deity",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Colors.blue.shade600,
                                        fontFamily: "verdana",
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                              ),
                            ]),
                            SizedBox(
                              width: 5.0,
                            ),
                            Column(children: <Widget>[
                              Container(
                                width: 250.0,
                                height: 35.0,
                                child: new Row(
                                  children: <Widget>[
                                    new Expanded(
                                        child: new TextField(
                                          //controller: _scontroller,
                                            controller: _scontroller
                                              ..text = 'Lakshmi',
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
                                        _scontroller.text = value;
                                      },
                                      itemBuilder: (BuildContext context) {
                                        return sDeity
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
                            ]),
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
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Row(
                          children: [
                            Column(children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 100.0,
                                  child: Text("Estd Date",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Colors.blue.shade600,
                                        fontFamily: "verdana",
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                              ),
                            ]),
                            SizedBox(
                              width: 5.0,
                            ),
                            Column(children: <Widget>[
                              Container(
                                width: 150.0,
                                height: 35.0,
                                child: TextField(
                                  //controller: _estdDateController,
                                    controller: _estdDateController
                                      ..text = '550AD',
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
                                      fontFamily: "verdana",
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.normal,
                                    )),
                              ),
                            ]),
                            SizedBox(
                              width: 25.0,
                            ),
                            Column(children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 80.0,
                                  child: Text("Purpose",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Colors.blue.shade600,
                                        fontFamily: "verdana",
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                              ),
                            ]),
                            SizedBox(
                              width: 5.0,
                            ),
                            Column(children: <Widget>[
                              Container(
                                width: 500.0,
                                height: 35.0,
                                child: TextField(
                                  //controller: _purposeController,
                                    controller: _purposeController
                                      ..text = 'All purpose',
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
                                      fontFamily: "verdana",
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.normal,
                                    )),
                              ),
                            ]),
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
                        color: Colors.grey.shade200,
                        width: 1260.0,
                        height: 60.0,
                        //alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.fromLTRB(20, 15, 0, 0),
                        child: Row(
                          children: [
                            Column(children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 150.0,
                                  child: Text("Opening Time1",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Colors.blue.shade600,
                                        fontFamily: "verdana",
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                              ),
                            ]),
                            SizedBox(
                              width: 5.0,
                            ),
                            Column(children: <Widget>[
                              Container(
                                width: 100.0,
                                height: 35.0,
                                child: TextField(
                                    controller: _openTime1Controller
                                    ..text = '16:30',
                                    onTap: _selOT1Time,
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
                                      fontFamily: "verdana",
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.normal,
                                    )),
                              ),
                            ]),
                            SizedBox(
                              width: 25.0,
                            ),
                            Column(children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 150.0,
                                  child: Text("Closing Time 1",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Colors.blue.shade600,
                                        fontFamily: "verdana",
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                              ),
                            ]),
                            SizedBox(
                              width: 5.0,
                            ),
                            Column(children: <Widget>[
                              Container(
                                width: 100.0,
                                height: 35.0,
                                child: TextField(
                                  //controller: _closeTime1Controller,
                                    controller: _closeTime1Controller
                                      ..text = '18:30',
                                    onTap: _selCT1Time,
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
                                      fontFamily: "verdana",
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.normal,
                                    )),
                              ),
                            ]),
                            SizedBox(
                              width: 50.0,
                            ),
                            Column(children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 150.0,
                                  child: Text("Special Notes",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Colors.blue.shade600,
                                        fontFamily: "verdana",
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                              ),
                            ]),
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
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Row(
                          children: [
                            Column(children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 150.0,
                                  child: Text("Opening Time2",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Colors.blue.shade600,
                                        fontFamily: "verdana",
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                              ),
                            ]),
                            SizedBox(
                              width: 5.0,
                            ),
                            Column(children: <Widget>[
                              Container(
                                width: 100.0,
                                height: 35.0,
                                child: TextField(
                                  //controller: _openTime2Controller,
                                    controller: _openTime2Controller
                                      ..text = '04:30',
                                    onTap: _selOT2Time,
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
                                      fontFamily: "verdana",
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.normal,
                                    )),
                              ),
                            ]),
                            SizedBox(
                              width: 25.0,
                            ),
                            Column(children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 150.0,
                                  child: Text("Closing Time 2",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Colors.blue.shade600,
                                        fontFamily: "verdana",
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                              ),
                            ]),
                            SizedBox(
                              width: 5.0,
                            ),
                            Column(children: <Widget>[
                              Container(
                                width: 100.0,
                                height: 35.0,
                                child: TextField(
                                  //controller: _closeTime2Controller,
                                    controller: _closeTime2Controller
                                    ..text = '09:30',
                                    onTap: _selCT2Time,
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
                                      fontFamily: "verdana",
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.normal,
                                    )),
                              ),
                            ]),
                            SizedBox(
                              width: 50.0,
                            ),
                            Column(children: <Widget>[
                              Container(
                                width: 600.0,
                                height: 35.0,
                                child: TextField(
                                  //controller: _notesController,
                                    controller: _notesController
                                      ..text = 'Sample notes 1',
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
                                      fontFamily: "verdana",
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.normal,
                                    )),
                              ),
                            ]),
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
                                          navigateToPage: "/tirthaAgentDashBoard",
                                          height: 60.0,
                                          width: 125.0,
                                        ),
                                        SizedBox(
                                          width: 50.0,
                                        ),
                                        ClipRRect(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20.0)),
                                          child: MaterialButton(
                                            onPressed: () async {
                                              final String addressType =
                                                  _addresscontroller.text;
                                              final String religion =
                                                  _rcontroller.text;
                                              final String primaryDeity =
                                                  _pcontroller.text;
                                              final String secondaryDeity =
                                                  _scontroller.text;
                                              final String name =
                                                  _nameController.text;
                                              final String address1 =
                                                  _addr1Controller.text;
                                              final String address2 =
                                                  _addr2Controller.text;
                                              final String state =
                                                  _stateController.text;
                                              final String district =
                                                  _districtController.text;
                                              final String city =
                                                  _cityController.text;
                                              final String pincode =
                                                  _pincodeController.text;
                                              var location = int.parse(
                                                  _locationController.text);
                                              assert(location is int);
                                              final String estdDate =
                                                  _estdDateController.text;
                                              final String purpose =
                                                  _purposeController.text;
                                              final String openTime1 =
                                                  _openTime1Controller.text;
                                              final String closeTime1 =
                                                  _closeTime1Controller.text;
                                              final String openTime2 =
                                                  _openTime2Controller.text;
                                              final String closeTime2 =
                                                  _closeTime2Controller.text;
                                              final String notes =
                                                  _notesController.text;

                                              print(
                                                  'saveTirtha Called - Before');

                                              globals.tirthaId =
                                              await tirthaMain.saveTirtha(
                                                  addressType,
                                                  religion,
                                                  primaryDeity,
                                                  secondaryDeity,
                                                  name,
                                                  address1,
                                                  address2,
                                                  state,
                                                  district,
                                                  city,
                                                  pincode,
                                                  location,
                                                  estdDate,
                                                  purpose,
                                                  openTime1,
                                                  closeTime1,
                                                  openTime2,
                                                  closeTime2,
                                                  notes);

                                              // print(
                                              //     'saveTirtha Called - AFTER ' + globals.tirthaId);

                                              // setState(() {
                                              //   globals.tirthaId = tirthaRegistrationId;
                                              // });

                                              return showDialog(
                                                context: context,
                                                builder: (ctx) => AlertDialog(
                                                  title: Text("Tirtha - Alert"),
                                                  content: Text("Tirtha saved successfully. Tirtha Id: " + globals.tirthaId),
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

                                              print('saveTirtha Called');

                                              //dynamic result = await Navigator.pushNamed(context, '/tirthaAgentDashBoard');
                                            },
                                            minWidth: 200.0,
                                            height: 60.0,
                                            color: const Color(0x7EE31A1A)
                                                .withOpacity(0.5),
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
                                          navigateToPage: "/tirthaAgentSevaInfo",
                                          height: 60.0,
                                          width: 125.0,
                                        ),
                                        SizedBox(
                                          width: 185.0,
                                        ),
                                        commons.NavigateToCancel(
                                          navigateToPage: "/tirthaAgentDashBoard",
                                          height: 60.0,
                                          width: 150.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )),
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









