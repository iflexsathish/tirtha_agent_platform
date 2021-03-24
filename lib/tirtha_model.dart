// To parse this JSON data, do
//
//     final tirthaModel = tirthaModelFromJson(jsonString);

import 'dart:convert';

TirthaModel tirthaModelFromJson(String str) => TirthaModel.fromJson(json.decode(str));

String tirthaModelToJson(TirthaModel data) => json.encode(data.toJson());

class TirthaModel {
  TirthaModel({
    this.address,
    this.dateOfEstablishment,
    this.locationCoordinates,
    this.name,
    this.primaryDietyName,
    this.religion,
    this.secondaryDietyName,
    this.specialNotes,
    this.specialityOrPurpose,
    this.templeTimings,
  });

  Address address;
  String dateOfEstablishment;
  LocationCoordinates locationCoordinates;
  String name;
  String primaryDietyName;
  String religion;
  String secondaryDietyName;
  String specialNotes;
  String specialityOrPurpose;
  List<TempleTiming> templeTimings;

  factory TirthaModel.fromJson(Map<String, dynamic> json) => TirthaModel(
    address: Address.fromJson(json["address"]),
    dateOfEstablishment: json["dateOfEstablishment"],
    locationCoordinates: LocationCoordinates.fromJson(json["locationCoordinates"]),
    name: json["name"],
    primaryDietyName: json["primaryDietyName"],
    religion: json["religion"],
    secondaryDietyName: json["secondaryDietyName"],
    specialNotes: json["specialNotes"],
    specialityOrPurpose: json["specialityOrPurpose"],
    templeTimings: List<TempleTiming>.from(json["templeTimings"].map((x) => TempleTiming.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "address": address.toJson(),
    "dateOfEstablishment": dateOfEstablishment,
    "locationCoordinates": locationCoordinates.toJson(),
    "name": name,
    "primaryDietyName": primaryDietyName,
    "religion": religion,
    "secondaryDietyName": secondaryDietyName,
    "specialNotes": specialNotes,
    "specialityOrPurpose": specialityOrPurpose,
    "templeTimings": List<dynamic>.from(templeTimings.map((x) => x.toJson())),
  };
}

class Address {
  Address({
    this.addressLine1,
    this.addressLine2,
    this.addressType,
    this.city,
    this.district,
    this.pinCode,
    this.state,
  });

  String addressLine1;
  String addressLine2;
  String addressType;
  String city;
  String district;
  String pinCode;
  String state;

  factory Address.fromJson(Map<String, dynamic> json) => Address(
    addressLine1: json["addressLine1"],
    addressLine2: json["addressLine2"],
    addressType: json["addressType"],
    city: json["city"],
    district: json["district"],
    pinCode: json["pinCode"],
    state: json["state"],
  );

  Map<String, dynamic> toJson() => {
    "addressLine1": addressLine1,
    "addressLine2": addressLine2,
    "addressType": addressType,
    "city": city,
    "district": district,
    "pinCode": pinCode,
    "state": state,
  };
}

class LocationCoordinates {
  LocationCoordinates({
    this.latitude,
    this.longitude,
  });

  int latitude;
  int longitude;

  factory LocationCoordinates.fromJson(Map<String, dynamic> json) => LocationCoordinates(
    latitude: json["latitude"],
    longitude: json["longitude"],
  );

  Map<String, dynamic> toJson() => {
    "latitude": latitude,
    "longitude": longitude,
  };
}

class TempleTiming {
  TempleTiming({
    this.endTime,
    this.name,
    this.startTime,
  });

  Time endTime;
  String name;
  Time startTime;

  factory TempleTiming.fromJson(Map<String, dynamic> json) => TempleTiming(
    endTime: Time.fromJson(json["endTime"]),
    name: json["name"],
    startTime: Time.fromJson(json["startTime"]),
  );

  Map<String, dynamic> toJson() => {
    "endTime": endTime.toJson(),
    "name": name,
    "startTime": startTime.toJson(),
  };
}

class Time {
  Time({
    this.hour,
    this.minute,
    this.nano,
    this.second,
  });

  String hour;
  String minute;
  int nano;
  String second;

  factory Time.fromJson(Map<String, dynamic> json) => Time(
    hour: json["hour"],
    minute: json["minute"],
    nano: json["nano"],
    second: json["second"],
  );

  Map<String, dynamic> toJson() => {
    "hour": hour,
    "minute": minute,
    "nano": nano,
    "second": second,
  };
}
