import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:flutter/services.dart' show rootBundle;
import 'package:http/http.dart';
import 'package:tirtha_agent/models/tirtha_agentDashboard_ReqModel.dart';
import 'package:tirtha_agent/models/tirtha_agentDashboard_RespModel.dart';
import '../pages/agentCommons.dart' as commons;
import '../GlobalVals.dart' as globals;

Future<AgentDashboard> fetchTirthaDetails(
    int pageNumber,
    int pageSize) async {

  final int offsetNum = 0;

  final sortColsRecord = SortColumn(direction: "asc", columnName: "first");
  final List<SortColumn> sortCols=[sortColsRecord];

  //To continue from here
  final AgentDashboardReqModelVal=AgentDashboardReqModel(
      pageNumber: pageNumber,pageSize: pageSize,offSet: offsetNum, sortColumns: sortCols);

  Map<String, String> headers = {"Content-type": "application/json"};

  var apiUrl = Uri.http('10.0.2.2:7070', '/tirtha/tirtha/agent-dashboard');

  String body = agentDashboardReqModelToJson(AgentDashboardReqModelVal);
  print("Request body: "+body);

  Response response = await post(apiUrl, headers: headers, body: body);
  int statusCode = response.statusCode;
  print("Response code:"+ statusCode.toString());


  if (response.statusCode == 201 || response.statusCode == 200) {
    print("Response body: "+response.body);
    AgentDashboard agentDashboardVal = AgentDashboard.fromJson(json.decode(response.body));
    print("agentDashboardVal" + agentDashboardVal.toString());
    return agentDashboardVal;
  } else {
    return null;
  }
}

