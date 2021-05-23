import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:flutter/services.dart' show rootBundle;
import 'package:http/http.dart';
import 'package:tirtha_agent/models/tirthaEvent_model.dart';
import '../pages/agentCommons.dart' as commons;
import '../GlobalVals.dart' as globals;

Future<String> saveTirthaEvent(
    String eventName,
    String eventFreq,
    String durationUnit,
    String durationValue,
    String startMonth,
    String endMonth,
    String speciality,
    String remarks) async {

  final int serialNum = 0;

  final TirthaEventsModelVal=TirthaEventsModel(
      eventName: eventName,eventFrequency: eventFreq,eventDuration: durationUnit,
      eventDurationNumber: durationValue,starMonth: startMonth,endMonth: endMonth, displayImg: eventName,
      eventSpeciality: speciality, eventRemarks: remarks,serialNum: serialNum
  );

  // final String apiUrl = "http://10.0.2.2:7070/tirtha/tirtha/seva-details";
  Map<String, String> headers = {"Content-type": "application/json"};
  Map<String, String> queryParameters = {"tirthaId": globals.tirthaId};
  // Map<String, String> queryParameters = {"tirthaId": "60a13150ff31be1560ee2666"};

  print("Global tirtha id "+globals.tirthaId);

  var apiUrl = Uri.http('10.0.2.2:7070', '/tirtha/tirtha/special-events', queryParameters);

  String body =tirthaEventsModelToJson(TirthaEventsModelVal);
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

