import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:flutter/services.dart' show rootBundle;
import 'package:http/http.dart';
import 'package:tirtha_agent/models/tirthaSeva_model.dart';
import '../pages/agentCommons.dart' as commons;
import '../GlobalVals.dart' as globals;

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
