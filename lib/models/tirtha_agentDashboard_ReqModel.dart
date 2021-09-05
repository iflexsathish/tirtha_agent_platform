// To parse this JSON data, do
//
//     final agentDashboardReqModel = agentDashboardReqModelFromJson(jsonString);

import 'dart:convert';

AgentDashboardReqModel agentDashboardReqModelFromJson(String str) => AgentDashboardReqModel.fromJson(json.decode(str));

String agentDashboardReqModelToJson(AgentDashboardReqModel data) => json.encode(data.toJson());

class AgentDashboardReqModel {
  AgentDashboardReqModel({
    this.pageNumber,
    this.pageSize,
    this.offSet,
    this.sortColumns,
  });

  int pageNumber;
  int pageSize;
  int offSet;
  List<SortColumn> sortColumns;

  factory AgentDashboardReqModel.fromJson(Map<String, dynamic> json) => AgentDashboardReqModel(
    pageNumber: json["pageNumber"],
    pageSize: json["pageSize"],
    offSet: json["offSet"],
    sortColumns: List<SortColumn>.from(json["sortColumns"].map((x) => SortColumn.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "pageNumber": pageNumber,
    "pageSize": pageSize,
    "offSet": offSet,
    "sortColumns": List<dynamic>.from(sortColumns.map((x) => x.toJson())),
  };
}

class SortColumn {
  SortColumn({
    this.direction,
    this.columnName,
  });

  String direction;
  String columnName;

  factory SortColumn.fromJson(Map<String, dynamic> json) => SortColumn(
    direction: json["direction"],
    columnName: json["columnName"],
  );

  Map<String, dynamic> toJson() => {
    "direction": direction,
    "columnName": columnName,
  };
}
