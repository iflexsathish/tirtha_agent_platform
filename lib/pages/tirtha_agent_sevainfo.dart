import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart';
import '../GlobalVals.dart' as globals;
import '../tirthaSeva_model.dart';

class tirthaAgentSevaInfo extends StatefulWidget {
  @override
  _tirthaAgentSevaInfoState createState() => _tirthaAgentSevaInfoState();
}

Future<String> saveTirthaSeva(
    String sevaName,
    List<String> sevaAvailableDays,
    String sevaFrom,
    String sevaTo,
    String reportingTime,
    String sevaRptPlace,
    int sevaPersons,
    int sevaCost,
    String sevaInstruction) async {

   final sevaTimingRecord=Timing(startTime: sevaFrom,endTime: sevaTo,reportingTime: reportingTime);
   final List<Timing> sevaTimings=[sevaTimingRecord];

  final tirthaSevaModelVal=TirthaSevaModel(
      name: sevaName,availableOnDays: sevaAvailableDays,timing: sevaTimings,
      reportingPoint: sevaRptPlace,maxPersonAllowed: sevaPersons,fee: sevaCost,displayImg: sevaName,
      specialInstructions: sevaInstruction
  );

  // final String apiUrl = "http://10.0.2.2:7070/tirtha/tirtha/seva-details";
  Map<String, String> headers = {"Content-type": "application/json"};
  Map<String, String> queryParameters = {"tirthaId": globals.tirthaId};

   print("Global tirtha id "+globals.tirthaId);

   var apiUrl = Uri.http('10.0.2.2:7070', '/tirtha/tirtha/seva-details', queryParameters);

  String body =tirthaSevaModelToJson(tirthaSevaModelVal);
  print("Request body: "+body);

  Response response = await post(apiUrl, headers: headers, body: body);
  int statusCode = response.statusCode;
  print("Response code:"+ statusCode.toString());


  if (response.statusCode == 201 || response.statusCode == 200) {
    return statusCode.toString();
  } else {
    return null;
  }
}

class _tirthaAgentSevaInfoState extends State<tirthaAgentSevaInfo> {

  bool chkmonday = false;
  bool chktuesday = false;
  bool chkwednesday = false;
  bool chkthursday = false;
  bool chkfriday = false;
  bool chksaturday = false;
  bool chksunday = false;

  final TextEditingController _sevaNameController = new TextEditingController();
  final TextEditingController _sevafromController = new TextEditingController();
  final TextEditingController _sevatoController = new TextEditingController();
  final TextEditingController _reportingController = new TextEditingController();
  final TextEditingController _sevaPersonController = new TextEditingController();
  final TextEditingController _sevaRptPlaceController = new TextEditingController();
  final TextEditingController _sevaCostController = new TextEditingController();
  final TextEditingController _sevaInstructionController = new TextEditingController();

  TimeOfDay selSevaFromTime = TimeOfDay.now();
  TimeOfDay selSevaToTime = TimeOfDay.now();
  TimeOfDay selReportTime = TimeOfDay.now();

  void _selSevaFromTime() async {
    final TimeOfDay newTime = await showTimePicker(
      context: context,
      initialTime: selSevaFromTime,
    );
    if (newTime != null) {
      setState(() {
        selSevaFromTime = newTime;
        String fromTimeHour = selSevaFromTime.hour.toString();
        String fromTimeMin = selSevaFromTime.minute.toString();

        int hourLength = fromTimeHour.length;
        int minLength = fromTimeMin.length;

        if (hourLength == 1 ){
          fromTimeHour = "0" + fromTimeHour;
        }

        if (minLength == 1 ){
          fromTimeMin = fromTimeMin + "0";
        }
        _sevafromController.text = fromTimeHour + ':' + fromTimeMin;
        // _sevafromController.text = formatDate(
        //     DateTime(2019, 08, 1, selectedTime.hour, selectedTime.minute),
        //     [hh, ':', nn, " ", am]).toString();
      });
    }
  }
  void _selSevaToTime() async {
    final TimeOfDay newTime = await showTimePicker(
      context: context,
      initialTime: selSevaToTime,
    );
    if (newTime != null) {
      setState(() {
        selSevaToTime = newTime;
        String fromTimeHour = selSevaToTime.hour.toString();
        String fromTimeMin = selSevaToTime.minute.toString();

        int hourLength = fromTimeHour.length;
        int minLength = fromTimeMin.length;

        if (hourLength == 1 ){
          fromTimeHour = "0" + fromTimeHour;
        }

        if (minLength == 1 ){
          fromTimeMin = fromTimeMin + "0";
        }
        _sevatoController.text = fromTimeHour + ':' + fromTimeMin;
        //_sevatoController.text = selSevaToTime.hour.toString() + ':' + selSevaToTime.minute.toString();
        // _sevafromController.text = formatDate(
        //     DateTime(2019, 08, 1, selectedTime.hour, selectedTime.minute),
        //     [hh, ':', nn, " ", am]).toString();
      });
    }
  }
  void _selReportTime() async {
    final TimeOfDay newTime = await showTimePicker(
      context: context,
      initialTime: selReportTime,
    );
    if (newTime != null) {
      setState(() {
        selReportTime = newTime;
        String fromTimeHour = selReportTime.hour.toString();
        String fromTimeMin = selReportTime.minute.toString();

        int hourLength = fromTimeHour.length;
        int minLength = fromTimeMin.length;

        if (hourLength == 1 ){
          fromTimeHour = "0" + fromTimeHour;
        }

        if (minLength == 1 ){
          fromTimeMin = fromTimeMin + "0";
        }
        _reportingController.text = fromTimeHour + ':' + fromTimeMin;
        //_reportingController.text = selReportTime.hour.toString() + ':' + selReportTime.minute.toString();
        // _sevafromController.text = formatDate(
        //     DateTime(2019, 08, 1, selectedTime.hour, selectedTime.minute),
        //     [hh, ':', nn, " ", am]).toString();
      });
    }
  }

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
                                    Text("Seva Details",
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
                                    Text("Stage 2/10",
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
                                    child: Container(
                                      width: 120.0,
                                      child: Text("Seva Name",
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
                            // SizedBox(
                            //   width: 3.0,
                            // ),
                            Column(
                                children: <Widget> [
                                  Container(
                                    width: 940.0,
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
                                      width: 120.0,
                                      child: Text("Seva Days",
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
                        padding: const EdgeInsets.fromLTRB(20, 25 , 0, 0),
                        child: Row(
                          children: [
                            Column(
                                children: <Widget> [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 150.0,
                                      child: Text("Seva Time From",
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
                                        controller: _sevafromController,
                                          //..text = "05:00",
                                        onTap: _selSevaFromTime,
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
                                      child: Text("Seva Time To",
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
                                        controller: _sevatoController,
                                        //..text = "06:00",
                                        onTap: _selSevaToTime,
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
                                      width: 150.0,
                                      child: Text("Reporting Time",
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
                                        controller: _reportingController,
                                        //..text = "04:30",
                                        onTap: _selReportTime,
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
                                      child: Text("Reporting Place",
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
                                    width: 300.0,
                                    height: 35.0,
                                    child: TextField(
                                        controller: _sevaRptPlaceController
                                          ..text = 'Seva Center',
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
                              width: 260.0,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              child: MaterialButton(
                                onPressed: () async {
                                  dynamic result = await Navigator.pushNamed(context, '/tirthaAgentMainInfo');
                                },
                                minWidth: 40.0,
                                height: 40.0,
                                color: const Color(0x7EE31A1A).withOpacity(0.5),
                                child: Text(
                                  "Upload Image",
                                  style: TextStyle(
                                    fontSize: 14.0,
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
                            Column(
                                children: <Widget> [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 130.0,
                                      child: Text("No of Persons",
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
                                    width: 80.0,
                                    height: 35.0,
                                    child: TextField(
                                        controller: _sevaPersonController
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
                              width: 10.0,
                            ),
                            Column(
                                children: <Widget> [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 175.0,
                                      child: Text("Cost per Person (Rs.)",
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
                                    width: 80.0,
                                    height: 35.0,
                                    child: TextField(
                                        controller: _sevaCostController
                                          ..text = '1000',
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
                                      width: 100.0,
                                      child: Text("Instructions",
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
                                    width: 400.0,
                                    height: 80.0,
                                    child: TextField(
                                        controller: _sevaInstructionController
                                          ..text = 'Dhoti and Saree dress code',
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
                              children: [
                                Container(
                                  width: 120.0,
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

                                        List<String> sevaAvblDays = [];

                                        if (this.chkmonday) {
                                          var sevaMon = "MONDAY";
                                          sevaAvblDays.add(sevaMon);
                                        }
                                        if (this.chktuesday) {
                                          var sevaTue = "TUESDAY";
                                          sevaAvblDays.add(sevaTue);
                                        }
                                        if (this.chkwednesday) {
                                          var sevaWed = "WEDNESDAY";
                                          sevaAvblDays.add(sevaWed);
                                        }
                                        if (this.chkthursday) {
                                          var sevaThu = "THURSDAY";
                                          sevaAvblDays.add(sevaThu);
                                        }
                                        if (this.chkfriday) {
                                          var sevaFri = "FRIDAY";
                                          sevaAvblDays.add(sevaFri);
                                        }
                                        if (this.chksaturday) {
                                          var sevaSat = "SATURDAY";
                                          sevaAvblDays.add(sevaSat);
                                        }
                                        if (this.chksunday) {
                                          var sevaSun = "SUNDAY";
                                          sevaAvblDays.add(sevaSun);
                                        }

                                        final String responseCode =
                                        await saveTirthaSeva(
                                            sevaName,
                                            sevaAvblDays,
                                            sevaFrom,
                                            sevaTo,
                                            reportingTime,
                                            sevaRptPlace,
                                            sevaPersonInt,
                                            sevaCostInt,
                                            sevaInstruction
                                        );

                                        print(
                                            'saveTirthaSeva Called - AFTER');

                                        if (responseCode == "200" || responseCode == "201") {
                                          return showDialog(
                                            context: context,
                                            builder: (ctx) => AlertDialog(
                                              title: Text("Tirtha - Alert"),
                                              content: Text("Seva Details saved successfully for Tirtha Id: " + globals.tirthaId),
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
                                              content: Text("Seva details failed to save."),
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
                                        "Add Seva",
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
                                        ClipRRect(
                                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                          child: MaterialButton(
                                            onPressed: () async {
                                              dynamic result = await Navigator.pushNamed(context, '/tirthaAgentMainInfo3');
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
                                              dynamic result = await Navigator.pushNamed(context, '/tirthaAgentDashBoard');
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
      ),
    );
  }
}


