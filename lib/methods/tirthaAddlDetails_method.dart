import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:tirtha_agent/models/tirthaAddlDetails_model.dart';
import '../GlobalVals.dart' as globals;

Future<String> saveTirthaAddlDetails(
    String eventName,
    String eventFreq,
    String durationUnit,
    String durationValue,
    String startMonth,
    String endMonth,
    String speciality,
    String remarks) async {

  final int serialNum = 0;

  final TirthaAddlDetailsModelVal=TirthaAddlDetailsModel(
      // eventName: eventName,eventFrequency: eventFreq,eventDuration: durationUnit,
      // eventDurationNumber: durationValue,starMonth: startMonth,endMonth: endMonth, displayImg: eventName,
      // eventSpeciality: speciality, eventRemarks: remarks,serialNum: serialNum
  );

  // final String apiUrl = "http://10.0.2.2:7070/tirtha/tirtha/seva-details";
  Map<String, String> headers = {"Content-type": "application/json"};
  Map<String, String> queryParameters = {"tirthaId": globals.tirthaId};
  // Map<String, String> queryParameters = {"tirthaId": "60a13150ff31be1560ee2666"};

  print("Global tirtha id "+globals.tirthaId);

  var apiUrl = Uri.http('10.0.2.2:7070', '/tirtha/tirtha/additional-info', queryParameters);

  String body =tirthaAddlDetailsModelToJson(TirthaAddlDetailsModelVal);
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

