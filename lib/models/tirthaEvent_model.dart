// To parse this JSON data, do
//
//     final tirthaEventsModel = tirthaEventsModelFromJson(jsonString);

import 'dart:convert';

TirthaEventsModel tirthaEventsModelFromJson(String str) => TirthaEventsModel.fromJson(json.decode(str));

String tirthaEventsModelToJson(TirthaEventsModel data) => json.encode(data.toJson());

class TirthaEventsModel {
  TirthaEventsModel({
    this.displayImg,
    this.endMonth,
    this.eventDuration,
    this.eventDurationNumber,
    this.eventFrequency,
    this.eventName,
    this.eventRemarks,
    this.eventSpeciality,
    this.serialNum,
    this.starMonth,
  });

  String displayImg;
  String endMonth;
  String eventDuration;
  String eventDurationNumber;
  String eventFrequency;
  String eventName;
  String eventRemarks;
  String eventSpeciality;
  int serialNum;
  String starMonth;

  factory TirthaEventsModel.fromJson(Map<String, dynamic> json) => TirthaEventsModel(
    displayImg: json["displayImg"],
    endMonth: json["endMonth"],
    eventDuration: json["eventDuration"],
    eventDurationNumber: json["eventDurationNumber"],
    eventFrequency: json["eventFrequency"],
    eventName: json["eventName"],
    eventRemarks: json["eventRemarks"],
    eventSpeciality: json["eventSpeciality"],
    serialNum: json["serialNum"],
    starMonth: json["starMonth"],
  );

  Map<String, dynamic> toJson() => {
    "displayImg": displayImg,
    "endMonth": endMonth,
    "eventDuration": eventDuration,
    "eventDurationNumber": eventDurationNumber,
    "eventFrequency": eventFrequency,
    "eventName": eventName,
    "eventRemarks": eventRemarks,
    "eventSpeciality": eventSpeciality,
    "serialNum": serialNum,
    "starMonth": starMonth,
  };
}