import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

import '../tirtha_model.dart';

class tirthaAgentMainInfo extends StatefulWidget {
  @override
  _tirthaAgentMainInfoState createState() => _tirthaAgentMainInfoState();
}

Future<TirthaModel> saveTirtha(
    String addressType,
    String religion,
    String primaryDeity,
    String secondaryDeity,
    String name,
    String address1,
    String address2,
    String state,
    String district,
    String city,
    String pincode,
    int location,
    String estdDate,
    String purpose,
    // String openTime1,
    // String closeTime1,
    // String openTime2,
    // String closeTime2,
    String notes) async {

  // print('this is a test $chkelder');

  final String apiUrl = "http://localhost:7070/tirtha/tirtha/register";

  //final DateTime postedtime = new DateTime.now();

  final response = await http.post(apiUrl, body: {
      "address": {
        "addressLine1": address1,
        "addressLine2": address2,
        "addressType": addressType,
        "city": city,
        "district": district,
        "pinCode": pincode,
        "state": state,
      },
      "dateOfEstablishment": estdDate,
      "locationCoordinates": {
        "latitude": location,
        "longitude": location,
      },
      "name": name,
      "primaryDietyName": primaryDeity,
      "religion": religion,
      "secondaryDietyName": secondaryDeity,
      "specialNotes": notes,
      "specialityOrPurpose": purpose,
      "templeTimings": [
        {
          "name": name,
          "startTime" : DateTime.parse("2021-02-18T11:00:00.000+05:30"),
          "endTime" : DateTime.parse("2021-02-18T11:00:00.000+05:30")
        }
      ]
  });

  if (response.statusCode == 201) {
    final String responseString = response.body;

    return tirthaModelFromJson(responseString);
  }else{

    return null;

  }

}


class _tirthaAgentMainInfoState extends State<tirthaAgentMainInfo> {

  TirthaModel _tirtha;

  final TextEditingController _addresscontroller = new TextEditingController();
  var addressType = ['BUSINESS', 'PERMANENT', 'CURRENT', 'HOME'];

  final TextEditingController _rcontroller = new TextEditingController();
  var religion = ['Hinduism', 'Sikhism', 'Christianity', 'Islam', 'Buddhism', 'Jainism'];

  final TextEditingController _pcontroller = new TextEditingController();
  var pDeity = ['Shiva', 'Vishnu', 'Ganesha', 'Subramaniya', 'Durga', 'Lakshmi', 'Saraswathi'];

  final TextEditingController _scontroller = new TextEditingController();
  var sDeity = ['Shiva', 'Vishnu', 'Ganesha', 'Subramaniya', 'Durga', 'Lakshmi', 'Saraswathi', 'Brahma', 'Shanishwar', 'Sai baba'];

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
  final TextEditingController _openTime1Controller = new TextEditingController();
  final TextEditingController _closeTime1Controller = new TextEditingController();
  final TextEditingController _openTime2Controller = new TextEditingController();
  final TextEditingController _closeTime2Controller = new TextEditingController();
  final TextEditingController _notesController = new TextEditingController();

  //controller: t1Controller,


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
                //Main Info Row
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
                                  Text("Main Information",
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
                            padding: const EdgeInsets.fromLTRB(15, 15 , 0, 0),
                            child: Column(
                                children: <Widget> [
                                  Text("Stage 1/10",
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
                //Name Section
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
                                    width: 80.0,
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
                          SizedBox(
                            width: 5.0,
                          ),
                          Column(
                              children: <Widget> [
                                Container(
                                  width: 500.0,
                                  height: 35.0,
                                  child: TextField(
                                      controller: _nameController,
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
                                    width: 80.0,
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
                          SizedBox(
                            width: 5.0,
                          ),
                          Column(
                              children: <Widget> [
                                Container(
                                  width: 350.0,
                                  height: 35.0,
                                  child: TextField(
                                    controller: _locationController,
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
                //Address section
                Row(
                  children: [
                    Container(
                      color: Colors.grey.shade200,
                      width: 1260.0,
                      height: 45.0,
                      //alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.fromLTRB(15, 0 , 0, 0),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 5.0,
                          ),
                          Column(
                              children: <Widget> [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 85.0,
                                    child: Text("Address1",
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
                                  width: 500.0,
                                  height: 35.0,
                                  child: TextField(
                                      controller: _addr1Controller,
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
                                    width: 80.0,
                                    child: Text("District",
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
                                  width: 350.0,
                                  height: 35.0,
                                  child: TextField(
                                      controller: _districtController,
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
                      height: 45.0,
                      //alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.fromLTRB(15, 0 , 0, 0),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 5.0,
                          ),
                          Column(
                              children: <Widget> [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 85.0,
                                    child: Text("Address2",
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
                                  width: 500.0,
                                  height: 35.0,
                                  child: TextField(
                                      controller: _addr2Controller,
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
                                    width: 80.0,
                                    child: Text("City",
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
                                  width: 350.0,
                                  height: 35.0,
                                  child: TextField(
                                      controller: _cityController,
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
                      height: 45.0,
                      //alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.fromLTRB(15, 0 , 0, 0),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 5.0,
                          ),
                          Column(
                              children: <Widget> [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 85.0,
                                    child: Text("State",
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
                                  width: 250.0,
                                  height: 35.0,
                                  child: TextField(
                                      controller: _stateController,
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
                                    width: 80.0,
                                    child: Text("Pincode",
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
                          //   width: 5.0,
                          // ),
                          Column(
                              children: <Widget> [
                                Container(
                                  width: 150.0,
                                  height: 35.0,
                                  child: TextField(
                                      controller: _pincodeController,
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
                                    child: Text("Addr Type",
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
                                  width: 300.0,
                                  height: 35.0,
                                  child: new Row(
                                    children: <Widget>[
                                      new Expanded(
                                          child: new TextField(controller: _addresscontroller,
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
                                              )
                                          )
                                      ),
                                      new PopupMenuButton<String>(
                                        icon: const Icon(Icons.arrow_drop_down),
                                        onSelected: (String value) {
                                          _addresscontroller.text = value;
                                        },
                                        itemBuilder: (BuildContext context) {
                                          return addressType.map<PopupMenuItem<String>>((String value) {
                                            return new PopupMenuItem(child: new Text(value), value: value);
                                          }).toList();
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ]
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
                      color: Colors.grey.shade200,
                      width: 1260.0,
                      height: 60.0,
                      //alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.fromLTRB(20, 15 , 0, 0),
                      child: Row(
                        children: [
                          //Religion
                          Column(
                              children: <Widget> [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 80.0,
                                    child: Text("Religion",
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
                                  width: 200.0,
                                  height: 35.0,
                                  child: new Row(
                                    children: <Widget>[
                                      new Expanded(
                                          child: new TextField(controller: _rcontroller,
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
                                            )
                                          )
                                      ),
                                      new PopupMenuButton<String>(
                                        icon: const Icon(Icons.arrow_drop_down),
                                        onSelected: (String value) {
                                          _rcontroller.text = value;
                                        },
                                        itemBuilder: (BuildContext context) {
                                          return religion.map<PopupMenuItem<String>>((String value) {
                                            return new PopupMenuItem(child: new Text(value), value: value);
                                          }).toList();
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ]
                          ),
                          SizedBox(
                            width: 25.0,
                          ),
                          //Primary Deity
                          Column(
                              children: <Widget> [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 150.0,
                                    child: Text("Primary Deity",
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
                                  width: 250.0,
                                  height: 35.0,
                                  child: new Row(
                                    children: <Widget>[
                                      new Expanded(
                                          child: new TextField(controller: _pcontroller,
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
                                              )
                                          )
                                      ),
                                      new PopupMenuButton<String>(
                                        icon: const Icon(Icons.arrow_drop_down),
                                        onSelected: (String value) {
                                          _pcontroller.text = value;
                                        },
                                        itemBuilder: (BuildContext context) {
                                          return pDeity.map<PopupMenuItem<String>>((String value) {
                                            return new PopupMenuItem(child: new Text(value), value: value);
                                          }).toList();
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ]
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          //Secondary Deity
                          Column(
                              children: <Widget> [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 150.0,
                                    child: Text("Secondary Deity",
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
                                  width: 250.0,
                                  height: 35.0,
                                  child: new Row(
                                    children: <Widget>[
                                      new Expanded(
                                          child: new TextField(controller: _scontroller,
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
                                              )
                                          )
                                      ),
                                      new PopupMenuButton<String>(
                                        icon: const Icon(Icons.arrow_drop_down),
                                        onSelected: (String value) {
                                          _scontroller.text = value;
                                        },
                                        itemBuilder: (BuildContext context) {
                                          return sDeity.map<PopupMenuItem<String>>((String value) {
                                            return new PopupMenuItem(child: new Text(value), value: value);
                                          }).toList();
                                        },
                                      ),
                                    ],
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
                      padding: const EdgeInsets.fromLTRB(20, 0 , 0, 0),
                      child: Row(
                        children: [
                          Column(
                              children: <Widget> [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 100.0,
                                    child: Text("Estd Date",
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
                                  width: 150.0,
                                  height: 35.0,
                                  child: TextField(
                                      controller: _estdDateController,
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
                                    width: 80.0,
                                    child: Text("Purpose",
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
                                  width: 500.0,
                                  height: 35.0,
                                  child: TextField(
                                      controller: _purposeController,
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
                      padding: const EdgeInsets.fromLTRB(20, 15 , 0, 0),
                      child: Row(
                        children: [
                          Column(
                              children: <Widget> [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 150.0,
                                    child: Text("Opening Time1",
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
                                      controller: _openTime1Controller,
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
                                    width: 150.0,
                                    child: Text("Closing Time 1",
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
                                      controller: _closeTime1Controller,
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
                            width: 50.0,
                          ),
                          Column(
                              children: <Widget> [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 150.0,
                                    child: Text("Special Notes",
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
                      height: 60.0,
                      //alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.fromLTRB(20, 0 , 0, 0),
                      child: Row(
                        children: [
                          Column(
                              children: <Widget> [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 150.0,
                                    child: Text("Opening Time2",
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
                                      controller: _openTime2Controller,
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
                                    width: 150.0,
                                    child: Text("Closing Time 2",
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
                                      controller: _closeTime2Controller,
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
                            width: 50.0,
                          ),
                          Column(
                              children: <Widget> [
                                Container(
                                  width: 600.0,
                                  height: 35.0,
                                  child: TextField(
                                      controller: _notesController,
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
                SizedBox(
                  height: 5.0,
                ),
                Row (
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
                                      ClipRRect(
                                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                        child: MaterialButton(
                                          onPressed: () async {
                                            dynamic result = await Navigator.pushNamed(context, '/tirthaAgentDashBoard');
                                          },
                                          minWidth: 125.0,
                                          height: 60.0,
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

                                            final String addressType = _addresscontroller.text;
                                            final String religion = _rcontroller.text;
                                            final String primaryDeity = _pcontroller.text;
                                            final String secondaryDeity = _scontroller.text;
                                            final String name = _nameController.text;
                                            final String address1 = _addr1Controller.text;
                                            final String address2 = _addr2Controller.text;
                                            final String state = _stateController.text;
                                            final String district = _districtController.text;
                                            final String city = _cityController.text;
                                            final String pincode = _pincodeController.text;
                                            var location = int.parse(_locationController.text);
                                            assert(location is int);
                                            final String estdDate = _estdDateController.text;
                                            final String purpose = _purposeController.text;
                                            final String openTime1 = _openTime1Controller.text;
                                            final String closeTime1 = _closeTime1Controller.text;
                                            final String openTime2 = _openTime2Controller.text;
                                            final String closeTime2 = _closeTime2Controller.text;
                                            final String notes = _notesController.text;
                                            print('saveTirtha Called - Before');
                                            final TirthaModel tirtha = await saveTirtha(
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
                                                // openTime1,
                                                // closeTime1,
                                                // openTime2,
                                                // closeTime2,
                                                notes);

                                            print('saveTirtha Called - AFTER');

                                            setState(() {
                                              _tirtha = tirtha;
                                            });
                                             print('saveTirtha Called');
                                            //dynamic result = await Navigator.pushNamed(context, '/tirthaAgentDashBoard');
                                          },
                                          minWidth: 200.0,
                                          height: 60.0,
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
                                            dynamic result = await Navigator.pushNamed(context, '/tirthaAgentMainInfo2');
                                          },
                                          minWidth: 125.0,
                                          height: 60.0,
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
                                          height: 60.0,
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
    );
  }
}


