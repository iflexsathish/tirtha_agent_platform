// To parse this JSON data, do
//
//     final tirthaSevaModel = tirthaSevaModelFromJson(jsonString);

import 'dart:convert';

TirthaSevaModel tirthaSevaModelFromJson(String str) => TirthaSevaModel.fromJson(json.decode(str));

String tirthaSevaModelToJson(TirthaSevaModel data) => json.encode(data.toJson());

class TirthaSevaModel {
  TirthaSevaModel({
    this.name,
    this.availableOnDays,
    this.timing,
    this.reportingPoint,
    this.maxPersonAllowed,
    this.fee,
    this.displayImg,
    this.specialInstructions,
  });

  String name;
  List<String> availableOnDays;
  List<Timing> timing;
  String reportingPoint;
  int maxPersonAllowed;
  int fee;
  String displayImg;
  String specialInstructions;

  factory TirthaSevaModel.fromJson(Map<String, dynamic> json) => TirthaSevaModel(
    name: json["name"],
    availableOnDays: List<String>.from(json["availableOnDays"].map((x) => x)),
    timing: List<Timing>.from(json["timing"].map((x) => Timing.fromJson(x))),
    reportingPoint: json["reportingPoint"],
    maxPersonAllowed: json["maxPersonAllowed"],
    fee: json["fee"],
    displayImg: json["displayImg"],
    specialInstructions: json["specialInstructions"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "availableOnDays": List<dynamic>.from(availableOnDays.map((x) => x)),
    "timing": List<dynamic>.from(timing.map((x) => x.toJson())),
    "reportingPoint": reportingPoint,
    "maxPersonAllowed": maxPersonAllowed,
    "fee": fee,
    "displayImg": displayImg,
    "specialInstructions": specialInstructions,
  };
}

class Timing {
  Timing({
    this.startTime,
    this.endTime,
    this.reportingTime,
  });

  String startTime;
  String endTime;
  String reportingTime;

  factory Timing.fromJson(Map<String, dynamic> json) => Timing(
    startTime: json["startTime"],
    endTime: json["endTime"],
    reportingTime: json["reportingTime"],
  );

  Map<String, dynamic> toJson() => {
    "startTime": startTime,
    "endTime": endTime,
    "reportingTime": reportingTime,
  };
}
