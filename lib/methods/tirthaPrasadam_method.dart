import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:flutter/services.dart' show rootBundle;
import 'package:http/http.dart';
import 'package:tirtha_agent/models/tirthaPrasadam_model.dart';
import '../pages/agentCommons.dart' as commons;
import '../GlobalVals.dart' as globals;

Future<String> saveTirthaPrasadam(
    String prasadamName,
    String prasadamType,
    List<String> prasadamDays,
    String prasadamLocation,
    int prasadamCost,
    int prasadamQuantity,
    String prasadamCostMetric,
    bool listed) async {

  final basecharge=BaseCharge(cost:prasadamCost, timeQuantity: prasadamQuantity, unitType: prasadamCostMetric);
  final costRecord=Cost(baseCharge: basecharge, currency: "INR", type: "FLAT");

  final tirthaPrasadamDetails=Prasadam(
      prasadamName: prasadamName,
      facilityType: "PRASADAM",
      type: prasadamType, locationDetails: prasadamLocation,
      days: prasadamDays, listedStatus: listed,
      cost: costRecord);

  Map<String, String> headers = {"Content-type": "application/json"};
  Map<String, String> queryParameters = {"tirthaId": globals.tirthaId};

  print("Global tirtha id "+globals.tirthaId);

  var apiUrl = Uri.http('10.0.2.2:7070', '/tirtha/tirtha/facilities/prasadam', queryParameters);

  String body =prasadamToJson(tirthaPrasadamDetails);
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
