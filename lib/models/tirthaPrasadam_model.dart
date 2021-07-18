// To parse this JSON data, do
//
//     final prasadam = prasadamFromJson(jsonString);

import 'dart:convert';

Prasadam prasadamFromJson(String str) => Prasadam.fromJson(json.decode(str));

String prasadamToJson(Prasadam data) => json.encode(data.toJson());

class Prasadam {
  Prasadam({
    this.cost,
    this.days,
    this.facilityType,
    this.listedStatus,
    this.locationDetails,
    this.prasadamName,
    this.type,
  });

  Cost cost;
  List<String> days;
  String facilityType;
  bool listedStatus;
  String locationDetails;
  String prasadamName;
  String type;

  factory Prasadam.fromJson(Map<String, dynamic> json) => Prasadam(
    cost: Cost.fromJson(json["cost"]),
    days: List<String>.from(json["days"].map((x) => x)),
    facilityType: json["facilityType"],
    listedStatus: json["listedStatus"],
    locationDetails: json["locationDetails"],
    prasadamName: json["prasadamName"],
    type: json["type"],
  );

  Map<String, dynamic> toJson() => {
    "cost": cost.toJson(),
    "days": List<dynamic>.from(days.map((x) => x)),
    "facilityType": facilityType,
    "listedStatus": listedStatus,
    "locationDetails": locationDetails,
    "prasadamName": prasadamName,
    "type": type,
  };
}

class Cost {
  Cost({
    this.baseCharge,
    this.currency,
    this.type,
  });

  BaseCharge baseCharge;
  String currency;
  String type;

  factory Cost.fromJson(Map<String, dynamic> json) => Cost(
    baseCharge: BaseCharge.fromJson(json["baseCharge"]),
    currency: json["currency"],
    type: json["type"],
  );

  Map<String, dynamic> toJson() => {
    "baseCharge": baseCharge.toJson(),
    "currency": currency,
    "type": type,
  };
}

class BaseCharge {
  BaseCharge({
    this.cost,
    this.timeQuantity,
    this.unitType,
  });

  int cost;
  int timeQuantity;
  String unitType;

  factory BaseCharge.fromJson(Map<String, dynamic> json) => BaseCharge(
    cost: json["cost"],
    timeQuantity: json["timeQuantity"],
    unitType: json["unitType"],
  );

  Map<String, dynamic> toJson() => {
    "cost": cost,
    "timeQuantity": timeQuantity,
    "unitType": unitType,
  };
}
