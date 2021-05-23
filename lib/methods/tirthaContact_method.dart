import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:flutter/services.dart' show rootBundle;
import 'package:http/http.dart';
import 'package:tirtha_agent/models/tirthaContactDetails_model.dart';
import '../pages/agentCommons.dart' as commons;
import '../GlobalVals.dart' as globals;

Future<String> saveTirthaContact(
    String contactName,
    String address,
    String mobile,
    String email,
    String department,
    String designation,
    String timings,
    String contactType) async {

  final TirthaContactDetailsModelVal=TirthaContactDetailsModel(
      type: contactType,contactName: contactName,designation: designation,
      department: department,emailId: email,mobileNo: mobile,profilePic: contactName,
      contactTimings: timings, address: address
  );

  // final String apiUrl = "http://10.0.2.2:7070/tirtha/tirtha/seva-details";
  Map<String, String> headers = {"Content-type": "application/json"};
  Map<String, String> queryParameters = {"tirthaId": globals.tirthaId};

  print("Global tirtha id "+globals.tirthaId);

  var apiUrl = Uri.http('10.0.2.2:7070', '/tirtha/tirtha/contact-details', queryParameters);

  String body =tirthaContactDetailsModelToJson(TirthaContactDetailsModelVal);
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
