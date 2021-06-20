import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import '../GlobalVals.dart' as globals;
import '../methods/tirthaParking_method.dart' as tirthaParking;
import '../pages/agentCommons.dart' as commons;

class tirthaAgentParkingDetails extends StatefulWidget {
  @override
  _tirthaAgentParkingDetailsState createState() => _tirthaAgentParkingDetailsState();
}

class _tirthaAgentParkingDetailsState extends State<tirthaAgentParkingDetails> {

  bool chkdriverfacilities = false;
  bool chkvalet = false;
  bool chkcarwash = false;
  bool chkdropoff = false;
  bool chkrestrooms = false;
  bool chktirthamanaged = false;

  final TextEditingController _nameController = new TextEditingController();
  final TextEditingController _addr1Controller = new TextEditingController();
  final TextEditingController _addr2Controller = new TextEditingController();
  final TextEditingController _stateController = new TextEditingController();
  final TextEditingController _districtController = new TextEditingController();
  final TextEditingController _cityController = new TextEditingController();
  final TextEditingController _pincodeController = new TextEditingController();
  final TextEditingController _locationController = new TextEditingController();

  final TextEditingController _parkingtimefromController = new TextEditingController();
  final TextEditingController _parkingtimetoController = new TextEditingController();

  final TextEditingController _distanceToTirthaMetricController = new TextEditingController();
  final TextEditingController _distanceToTirthaValueController = new TextEditingController();

  final TextEditingController _parkingFeeController = new TextEditingController();
  final TextEditingController _parkingAddOnController = new TextEditingController();
  final TextEditingController _parkingAddOnIncrController = new TextEditingController();
  final TextEditingController _parkingFeeMetricController = new TextEditingController();
  final TextEditingController _sevaInstructionController = new TextEditingController();

  final TextEditingController _typecontroller = new TextEditingController();
  var parkingType = ['FREE','PAID','PRIVILEGED'];

  final TextEditingController _metriccontroller = new TextEditingController();
  var metricType = ['KILOMETERS','MILES','OTHERS'];

  final TextEditingController _basiscontroller = new TextEditingController();
  var basisType = ['HOURLY','DAILY','OTHERS'];

  TimeOfDay selParkingFromTime = TimeOfDay.now();
  TimeOfDay selParkingToTime = TimeOfDay.now();
  TimeOfDay selReportTime = TimeOfDay.now();

  void _selParkingFromTime() async {
    final TimeOfDay newTime = await showTimePicker(
      context: context,
      initialTime: selParkingFromTime,
    );
    if (newTime != null) {
      setState(() {
        selParkingFromTime = newTime;
        String fromTimeHour = selParkingFromTime.hour.toString();
        String fromTimeMin = selParkingFromTime.minute.toString();

        int hourLength = fromTimeHour.length;
        int minLength = fromTimeMin.length;

        if (hourLength == 1 ){
          fromTimeHour = "0" + fromTimeHour;
        }

        if (minLength == 1 ){
          fromTimeMin = fromTimeMin + "0";
        }
        _parkingtimefromController.text = fromTimeHour + ':' + fromTimeMin;
        // _sevafromController.text = formatDate(
        //     DateTime(2019, 08, 1, selectedTime.hour, selectedTime.minute),
        //     [hh, ':', nn, " ", am]).toString();
      });
    }
  }
  void _selParkingToTime() async {
    final TimeOfDay newTime = await showTimePicker(
      context: context,
      initialTime: selParkingToTime,
    );
    if (newTime != null) {
      setState(() {
        selParkingToTime = newTime;
        String fromTimeHour = selParkingToTime.hour.toString();
        String fromTimeMin = selParkingToTime.minute.toString();

        int hourLength = fromTimeHour.length;
        int minLength = fromTimeMin.length;

        if (hourLength == 1 ){
          fromTimeHour = "0" + fromTimeHour;
        }

        if (minLength == 1 ){
          fromTimeMin = fromTimeMin + "0";
        }
        _parkingtimetoController.text = fromTimeHour + ':' + fromTimeMin;
        //_sevatoController.text = selSevaToTime.hour.toString() + ':' + selSevaToTime.minute.toString();
        // _sevafromController.text = formatDate(
        //     DateTime(2019, 08, 1, selectedTime.hour, selectedTime.minute),
        //     [hh, ':', nn, " ", am]).toString();
      });
    }
  }
  // void _selReportTime() async {
  //   final TimeOfDay newTime = await showTimePicker(
  //     context: context,
  //     initialTime: selReportTime,
  //   );
  //   if (newTime != null) {
  //     setState(() {
  //       selReportTime = newTime;
  //       String fromTimeHour = selReportTime.hour.toString();
  //       String fromTimeMin = selReportTime.minute.toString();
  //
  //       int hourLength = fromTimeHour.length;
  //       int minLength = fromTimeMin.length;
  //
  //       if (hourLength == 1 ){
  //         fromTimeHour = "0" + fromTimeHour;
  //       }
  //
  //       if (minLength == 1 ){
  //         fromTimeMin = fromTimeMin + "0";
  //       }
  //       _reportingController.text = fromTimeHour + ':' + fromTimeMin;
  //       //_reportingController.text = selReportTime.hour.toString() + ':' + selReportTime.minute.toString();
  //       // _sevafromController.text = formatDate(
  //       //     DateTime(2019, 08, 1, selectedTime.hour, selectedTime.minute),
  //       //     [hh, ':', nn, " ", am]).toString();
  //     });
  //   }
  // }

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
                    titleText: "Parking Details",
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
                                          ..text = 'Central Parking Zone',
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
                                    child: Container(
                                      width: 120.0,
                                      child: Text("Parking Type",
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
                            Column(children: <Widget>[
                              Container(
                                width: 200.0,
                                height: 35.0,
                                child: new Row(
                                  children: <Widget>[
                                    new Expanded(
                                        child: new TextField(
                                          //controller: _efcontroller,
                                            controller: _typecontroller
                                              ..text = 'PRIMARY',
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
                                        _typecontroller.text = value;
                                      },
                                      itemBuilder: (BuildContext context) {
                                        return parkingType
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
                  Row(
                    children: [
                      Container(
                        color: Colors.grey.shade200,
                        width: 1260.0,
                        height: 80.0,
                        //alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.fromLTRB(20, 25 , 0, 0),
                        child: Row(
                          children: [
                            Column(
                                children: <Widget> [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 150.0,
                                      child: Text("Timings - From",
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
                                    height: 30.0,
                                    child: TextField(
                                        controller: _parkingtimefromController,
                                        //..text = "05:00",
                                        onTap: _selParkingFromTime,
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
                              width: 80.0,
                            ),
                            Column(
                                children: <Widget> [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Container(
                                      width: 150.0,
                                      child: Text("Timings - To",
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
                                    height: 30.0,
                                    child: TextField(
                                        controller: _parkingtimetoController,
                                        //..text = "06:00",
                                        onTap: _selParkingToTime,
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
                              width: 80.0,
                            ),
                            Column(
                                children: <Widget> [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 150.0,
                                      child: Text("Distance to Tirtha",
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
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 100.0,
                                      height: 30.0,
                                      child: TextField(
                                          controller: _distanceToTirthaValueController
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
                                      width: 180.0,
                                      height: 30.0,
                                      child: new Row(
                                        children: <Widget>[
                                          new Expanded(
                                              child: new TextField(
                                                  controller: _distanceToTirthaMetricController
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
                                              _distanceToTirthaMetricController.text = value;
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
                                  ),
                                ]
                            ),
                            // Container(
                            //   width: 180.0,
                            //   height: 30.0,
                            //   child: new Row(
                            //     children: <Widget>[
                            //       new Expanded(
                            //           child: new TextField(
                            //               controller: _distanceToTirthaMetricController
                            //                 ..text = 'KILOMETERS',
                            //               decoration: InputDecoration(
                            //                 border: OutlineInputBorder(
                            //                   borderSide: BorderSide.none,
                            //                 ),
                            //                 filled: true,
                            //                 fillColor: Colors.white,
                            //                 contentPadding:
                            //                 const EdgeInsets.only(
                            //                     left: 10.0,
                            //                     bottom: 8.0,
                            //                     top: 0.0),
                            //               ),
                            //               style: TextStyle(
                            //                 //color: Colors.grey,
                            //                 backgroundColor: Colors.white38,
                            //                 fontFamily: "verdana",
                            //                 fontSize: 16.0,
                            //                 fontWeight: FontWeight.normal,
                            //               ))),
                            //       new PopupMenuButton<String>(
                            //         icon: const Icon(Icons.arrow_drop_down),
                            //         onSelected: (String value) {
                            //           _distanceToTirthaMetricController.text = value;
                            //         },
                            //         itemBuilder: (BuildContext context) {
                            //           return metricType
                            //               .map<PopupMenuItem<String>>(
                            //                   (String value) {
                            //                 return new PopupMenuItem(
                            //                     child: new Text(value),
                            //                     value: value);
                            //               }).toList();
                            //         },
                            //       ),
                            //     ],
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
                                      width: 150.0,
                                      child: Text("Parking Fee (INR)",
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
                                        controller: _parkingFeeController
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
                              width: 20.0,
                            ),
                            Column(
                                children: <Widget> [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 150.0,
                                      child: Text("Add-On Fee (INR)",
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
                                        controller: _parkingAddOnController
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
                              width: 5.0,
                            ),
                            Column(
                                children: <Widget> [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 50.0,
                                      child: Text("Every",
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
                                        controller: _parkingAddOnIncrController
                                          ..text = '1',
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
                                      width: 140.0,
                                      height: 35.0,
                                      child: new Row(
                                        children: <Widget>[
                                          new Expanded(
                                              child: new TextField(
                                                  controller: _parkingFeeMetricController
                                                    ..text = 'HOURLY',
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
                                              _parkingFeeMetricController.text = value;
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
                        height: 80.0,
                        //alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.fromLTRB(20, 25 , 0, 0),
                        child: Row(
                          children: [
                            Column(
                                children: <Widget> [
                                  Container(
                                    width: 200.0,
                                    height: 25.0,
                                    child: CheckboxListTile(
                                      contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      title: Text('Driver Facilities',
                                          style: TextStyle(
                                            color: Colors.blue.shade600,
                                            fontFamily: "verdana" ,
                                            fontSize: 16.0,
                                          )
                                      ),
                                      dense: true,
                                      checkColor: Colors.blue,
                                      activeColor: Colors.red,
                                      value: this.chkdriverfacilities,
                                      onChanged: (bool value) {
                                        setState(() {
                                          this.chkdriverfacilities = value;
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
                                    width: 200.0,
                                    height: 25.0,
                                    child: CheckboxListTile(
                                      contentPadding: EdgeInsets.all(0),
                                      title: Text('Valet Parking',
                                          style: TextStyle(
                                            color: Colors.blue.shade600,
                                            fontFamily: "verdana" ,
                                            fontSize: 16.0,
                                          )
                                      ),
                                      dense: true,
                                      checkColor: Colors.blue,
                                      activeColor: Colors.red,
                                      value: this.chkvalet,
                                      onChanged: (bool value) {
                                        setState(() {
                                          this.chkvalet = value;
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
                                      title: Text('Car Wash',
                                          style: TextStyle(
                                            color: Colors.blue.shade600,
                                            fontFamily: "verdana" ,
                                            fontSize: 16.0,
                                          )
                                      ),
                                      dense: true,
                                      checkColor: Colors.blue,
                                      activeColor: Colors.red,
                                      value: this.chkcarwash,
                                      onChanged: (bool value) {
                                        setState(() {
                                          this.chkcarwash = value;
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
                                      title: Text('Drop Off',
                                          style: TextStyle(
                                            color: Colors.blue.shade600,
                                            fontFamily: "verdana" ,
                                            fontSize: 16.0,
                                          )
                                      ),
                                      dense: true,
                                      checkColor: Colors.blue,
                                      activeColor: Colors.red,
                                      value: this.chkdropoff,
                                      onChanged: (bool value) {
                                        setState(() {
                                          this.chkdropoff = value;
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
                                    width: 200.0,
                                    height: 25.0,
                                    child: CheckboxListTile(
                                      contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      title: Text('Rest Rooms',
                                          style: TextStyle(
                                            color: Colors.blue.shade600,
                                            fontFamily: "verdana" ,
                                            fontSize: 16.0,
                                          )
                                      ),
                                      dense: true,
                                      checkColor: Colors.blue,
                                      activeColor: Colors.red,
                                      value: this.chkrestrooms,
                                      onChanged: (bool value) {
                                        setState(() {
                                          this.chkrestrooms = value;
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
                                    width: 200.0,
                                    height: 25.0,
                                    child: CheckboxListTile(
                                      contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      title: Text('Tirtha Managed',
                                          style: TextStyle(
                                            color: Colors.blue.shade600,
                                            fontFamily: "verdana" ,
                                            fontSize: 16.0,
                                          )
                                      ),
                                      dense: true,
                                      checkColor: Colors.blue,
                                      activeColor: Colors.red,
                                      value: this.chktirthamanaged,
                                      onChanged: (bool value) {
                                        setState(() {
                                          this.chktirthamanaged = value;
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
                  // Row(
                  //   children: [
                  //     Container(
                  //       color: Colors.grey.shade200,
                  //       width: 1260.0,
                  //       height: 140.0,
                  //       //alignment: Alignment.centerLeft,
                  //       padding: const EdgeInsets.fromLTRB(20, 50 , 0, 0),
                  //       child: Row(
                  //         children: [
                  //           Column(
                  //               children: <Widget> [
                  //                 Padding(
                  //                   padding: const EdgeInsets.all(8.0),
                  //                   child: Container(
                  //                     width: 130.0,
                  //                     child: Text("No of Persons",
                  //                         textAlign: TextAlign.left,
                  //                         style: TextStyle(
                  //                           color: Colors.blue.shade600,
                  //                           fontFamily: "verdana" ,
                  //                           fontSize: 16.0,
                  //                           fontWeight: FontWeight.bold,
                  //                         )),
                  //                   ),
                  //                 ),
                  //               ]
                  //           ),
                  //           Column(
                  //               children: <Widget> [
                  //                 Container(
                  //                   width: 80.0,
                  //                   height: 35.0,
                  //                   child: TextField(
                  //                       controller: _sevaPersonController
                  //                         ..text = '1',
                  //                       decoration: InputDecoration(
                  //                         border: OutlineInputBorder(
                  //                           borderSide: BorderSide.none,
                  //                         ),
                  //                         filled: true,
                  //                         fillColor: Colors.white,
                  //                         contentPadding: const EdgeInsets.only(
                  //                             left: 10.0, bottom: 8.0, top: 8.0),
                  //                       ),
                  //                       style: TextStyle(
                  //                         //color: Colors.grey,
                  //                         backgroundColor: Colors.white38,
                  //                         fontFamily: "verdana" ,
                  //                         fontSize: 16.0,
                  //                         fontWeight: FontWeight.normal,
                  //                       )),
                  //                 ),
                  //               ]
                  //           ),
                  //           SizedBox(
                  //             width: 10.0,
                  //           ),
                  //           Column(
                  //               children: <Widget> [
                  //                 Padding(
                  //                   padding: const EdgeInsets.all(8.0),
                  //                   child: Container(
                  //                     width: 175.0,
                  //                     child: Text("Cost per Person (Rs.)",
                  //                         textAlign: TextAlign.left,
                  //                         style: TextStyle(
                  //                           color: Colors.blue.shade600,
                  //                           fontFamily: "verdana" ,
                  //                           fontSize: 16.0,
                  //                           fontWeight: FontWeight.bold,
                  //                         )),
                  //                   ),
                  //                 ),
                  //               ]
                  //           ),
                  //           SizedBox(
                  //             width: 5.0,
                  //           ),
                  //           Column(
                  //               children: <Widget> [
                  //                 Container(
                  //                   width: 80.0,
                  //                   height: 35.0,
                  //                   child: TextField(
                  //                       controller: _sevaCostController
                  //                         ..text = '1000',
                  //                       decoration: InputDecoration(
                  //                         border: OutlineInputBorder(
                  //                           borderSide: BorderSide.none,
                  //                         ),
                  //                         filled: true,
                  //                         fillColor: Colors.white,
                  //                         contentPadding: const EdgeInsets.only(
                  //                             left: 10.0, bottom: 8.0, top: 8.0),
                  //                       ),
                  //                       style: TextStyle(
                  //                         //color: Colors.grey,
                  //                         backgroundColor: Colors.white38,
                  //                         fontFamily: "verdana" ,
                  //                         fontSize: 16.0,
                  //                         fontWeight: FontWeight.normal,
                  //                       )),
                  //                 ),
                  //               ]
                  //           ),
                  //           SizedBox(
                  //             width: 25.0,
                  //           ),
                  //           Column(
                  //               children: <Widget> [
                  //                 Padding(
                  //                   padding: const EdgeInsets.all(8.0),
                  //                   child: Container(
                  //                     width: 100.0,
                  //                     child: Text("Instructions",
                  //                         textAlign: TextAlign.left,
                  //                         style: TextStyle(
                  //                           color: Colors.blue.shade600,
                  //                           fontFamily: "verdana" ,
                  //                           fontSize: 16.0,
                  //                           fontWeight: FontWeight.bold,
                  //                         )),
                  //                   ),
                  //                 ),
                  //               ]
                  //           ),
                  //           SizedBox(
                  //             width: 5.0,
                  //           ),
                  //           Column(
                  //               children: <Widget> [
                  //                 Container(
                  //                   width: 400.0,
                  //                   height: 80.0,
                  //                   child: TextField(
                  //                       controller: _sevaInstructionController
                  //                         ..text = 'Dhoti and Saree dress code',
                  //                       decoration: InputDecoration(
                  //                         border: OutlineInputBorder(
                  //                           borderSide: BorderSide.none,
                  //                         ),
                  //                         filled: true,
                  //                         fillColor: Colors.white,
                  //                         contentPadding: const EdgeInsets.only(
                  //                             left: 10.0, bottom: 8.0, top: 8.0),
                  //                       ),
                  //                       style: TextStyle(
                  //                         //color: Colors.grey,
                  //                         backgroundColor: Colors.white38,
                  //                         fontFamily: "verdana" ,
                  //                         fontSize: 16.0,
                  //                         fontWeight: FontWeight.normal,
                  //                       )),
                  //                 ),
                  //               ]
                  //           ),
                  //           SizedBox(
                  //             width: 25.0,
                  //           ),
                  //           Column(
                  //             children: [
                  //               Container(
                  //                 width: 120.0,
                  //                 height: 40.0,
                  //                 child: ClipRRect(
                  //                   borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  //                   child: MaterialButton(
                  //                     onPressed: () async {
                  //
                  //                       final String sevaName =
                  //                           _nameController.text;
                  //                       final String sevaFrom =
                  //                           _parkingtimefromController.text;
                  //                       final String sevaTo =
                  //                           _parkingtimetoController.text;
                  //                       final String sevaPersons =
                  //                       _sevaPersonController.text;
                  //                       final int sevaPersonInt = int.parse(sevaPersons);
                  //                       final String sevaRptPlace =
                  //                           _sevaRptPlaceController.text;
                  //                       final String sevaCost =
                  //                           _sevaCostController.text;
                  //                       final int sevaCostInt = int.parse(sevaCost);
                  //                       // final int sevaCostInt = sevaCost.
                  //                       final String sevaInstruction =
                  //                           _sevaInstructionController.text;
                  //
                  //                       // List<String> sevaAvblDays = [];
                  //
                  //                       // if (this.chkmonday) {
                  //                       //   var sevaMon = "MONDAY";
                  //                       //   sevaAvblDays.add(sevaMon);
                  //                       // }
                  //                       // if (this.chktuesday) {
                  //                       //   var sevaTue = "TUESDAY";
                  //                       //   sevaAvblDays.add(sevaTue);
                  //                       // }
                  //                       // if (this.chkwednesday) {
                  //                       //   var sevaWed = "WEDNESDAY";
                  //                       //   sevaAvblDays.add(sevaWed);
                  //                       // }
                  //                       // if (this.chkthursday) {
                  //                       //   var sevaThu = "THURSDAY";
                  //                       //   sevaAvblDays.add(sevaThu);
                  //                       // }
                  //                       // if (this.chkfriday) {
                  //                       //   var sevaFri = "FRIDAY";
                  //                       //   sevaAvblDays.add(sevaFri);
                  //                       // }
                  //                       // if (this.chksaturday) {
                  //                       //   var sevaSat = "SATURDAY";
                  //                       //   sevaAvblDays.add(sevaSat);
                  //                       // }
                  //                       // if (this.chksunday) {
                  //                       //   var sevaSun = "SUNDAY";
                  //                       //   sevaAvblDays.add(sevaSun);
                  //                       // }
                  //
                  //                       // final String responseCode =
                  //                       // await tirthaParking.saveTirthaParking(
                  //                       //     sevaName,
                  //                       //     sevaAvblDays,
                  //                       //     sevaFrom,
                  //                       //     sevaTo,
                  //                       //     reportingTime,
                  //                       //     sevaRptPlace,
                  //                       //     sevaPersonInt,
                  //                       //     sevaCostInt,
                  //                       //     sevaInstruction
                  //                       // );
                  //
                  //                       print(
                  //                           'saveTirthaSeva Called - AFTER');
                  //
                  //                       // if (responseCode == "200" || responseCode == "201") {
                  //                       //   return showDialog(
                  //                       //     context: context,
                  //                       //     builder: (ctx) => AlertDialog(
                  //                       //       title: Text("Tirtha - Alert"),
                  //                       //       content: Text("Seva Details saved successfully for Tirtha Id: " + globals.tirthaId),
                  //                       //       actions: <Widget>[
                  //                       //         FlatButton(
                  //                       //           onPressed: () {
                  //                       //             Navigator.of(ctx).pop();
                  //                       //           },
                  //                       //           child: Text("OK"),
                  //                       //         ),
                  //                       //       ],
                  //                       //     ),
                  //                       //   );
                  //                       // } else {
                  //                       //   return showDialog(
                  //                       //     context: context,
                  //                       //     builder: (ctx) => AlertDialog(
                  //                       //       title: Text("Tirtha - Alert"),
                  //                       //       content: Text("Seva details failed to save."),
                  //                       //       actions: <Widget>[
                  //                       //         FlatButton(
                  //                       //           onPressed: () {
                  //                       //             Navigator.of(ctx).pop();
                  //                       //           },
                  //                       //           child: Text("OK"),
                  //                       //         ),
                  //                       //       ],
                  //                       //     ),
                  //                       //   );
                  //                       // }
                  //
                  //                       //dynamic result = await Navigator.pushNamed(context, '/tirthaAgentMainInfo');
                  //                     },
                  //                     minWidth: 50.0,
                  //                     height: 50.0,
                  //                     color: const Color(0x7EE31A1A).withOpacity(0.5),
                  //                     child: Text(
                  //                       "Add Seva",
                  //                       style: TextStyle(
                  //                         fontSize: 18.0,
                  //                         fontFamily: "verdana",
                  //                         fontWeight: FontWeight.bold,
                  //                         color: Colors.white,
                  //                       ),
                  //                     ),
                  //                   ),
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //   ],
                  // ),
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
                                          navigateToPage: "/tirthaAgentMainInfo",
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
                                          navigateToPage: "/tirthaAgentSpecialEvents",
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


