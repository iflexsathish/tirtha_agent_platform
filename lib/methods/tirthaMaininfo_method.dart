import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:flutter/services.dart' show rootBundle;
import 'package:http/http.dart';
import '../pages/agentCommons.dart' as commons;
import '../models/tirtha_model.dart';
import '../GlobalVals.dart' as globals;

Future<String> saveTirtha(
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
    String openTime1,
    String closeTime1,
    String openTime2,
    String closeTime2,
    String notes) async {

  final address=Address(addressLine1:address1 , addressLine2:address2 , addressType: "PERMANENT", city: city,district: district,pinCode: pincode,state: state);
  final locationCoordinates=LocationCoordinates(latitude: 12345,longitude: 3456);
  final templeTimingRecord=TempleTiming(endTime: openTime1,name: "opens",startTime: closeTime1);
  final List<TempleTiming> templeTimings=[templeTimingRecord];

  final tirthaModelVal=TirthaModel(
      address: address,dateOfEstablishment: "1900",locationCoordinates: locationCoordinates,
      name: name,primaryDietyName: primaryDeity,religion: religion,secondaryDietyName: secondaryDeity,
      specialNotes: notes,specialityOrPurpose: purpose,templeTimings: templeTimings
  );


  final String apiUrl = "http://10.0.2.2:7070/tirtha/tirtha/register";
  Map<String, String> headers = {"Content-type": "application/json"};
  String body =tirthaModelToJson(tirthaModelVal);
  print("Request body: "+body);

  Response response = await post(apiUrl, headers: headers, body: body);
  int statusCode = response.statusCode;
  print("Response code:"+ statusCode.toString());


  if (response.statusCode == 201 || response.statusCode == 200) {
    print("Response body: "+response.body);
    return response.body;
  } else {
    return null;
  }
}
