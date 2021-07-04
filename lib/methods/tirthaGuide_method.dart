import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:flutter/services.dart' show rootBundle;
import 'package:http/http.dart';
import 'package:tirtha_agent/models/tirthaGuide_model.dart';
import '../pages/agentCommons.dart' as commons;
import '../GlobalVals.dart' as globals;

Future<String> saveTirthaGuide(
    String guideName,
    String emailId,
    String mobileNo,
    int yearsOfExp,
    List<String> langKnown,
    int guideFee,
    int guideFeeBasis,
    String guideFeeBasisMetric,
    bool listed) async {

  final basecharge=BaseCharge(cost:guideFee, timeQuantity: guideFeeBasis, unitType: guideFeeBasisMetric);
  final chargesRecord=Charges(baseCharge: basecharge, currency: "INR", type: "FLAT");

  final tirthaGuideDetails=Guide(
      guideName: guideName,
      facilityType: "GUIDE",
      emailId: emailId, mobileNo: mobileNo,
      yearsOfExp: yearsOfExp, languagesKnown: langKnown, listedStatus: listed,
      charges: chargesRecord);

  Map<String, String> headers = {"Content-type": "application/json"};
  Map<String, String> queryParameters = {"tirthaId": globals.tirthaId};

  print("Global tirtha id "+globals.tirthaId);

  var apiUrl = Uri.http('10.0.2.2:7070', '/tirtha/tirtha/facilities/guide', queryParameters);

  String body =guideToJson(tirthaGuideDetails);
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
