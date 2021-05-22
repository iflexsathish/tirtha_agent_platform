// To parse this JSON data, do
//
//     final tirthaContactDetailsModel = tirthaContactDetailsModelFromJson(jsonString);

import 'dart:convert';

TirthaContactDetailsModel tirthaContactDetailsModelFromJson(String str) => TirthaContactDetailsModel.fromJson(json.decode(str));

String tirthaContactDetailsModelToJson(TirthaContactDetailsModel data) => json.encode(data.toJson());

class TirthaContactDetailsModel {
  TirthaContactDetailsModel({
    this.address,
    this.contactName,
    this.contactTimings,
    this.department,
    this.designation,
    this.emailId,
    this.mobileNo,
    this.profilePic,
    this.type,
  });

  String address;
  String contactName;
  String contactTimings;
  String department;
  String designation;
  String emailId;
  String mobileNo;
  String profilePic;
  String type;

  factory TirthaContactDetailsModel.fromJson(Map<String, dynamic> json) => TirthaContactDetailsModel(
    address: json["address"],
    contactName: json["contactName"],
    contactTimings: json["contactTimings"],
    department: json["department"],
    designation: json["designation"],
    emailId: json["emailId"],
    mobileNo: json["mobileNo"],
    profilePic: json["profilePic"],
    type: json["type"],
  );

  Map<String, dynamic> toJson() => {
    "address": address,
    "contactName": contactName,
    "contactTimings": contactTimings,
    "department": department,
    "designation": designation,
    "emailId": emailId,
    "mobileNo": mobileNo,
    "profilePic": profilePic,
    "type": type,
  };
}
