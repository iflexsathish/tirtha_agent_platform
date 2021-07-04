// To parse this JSON data, do
//
//     final guide = guideFromJson(jsonString);

import 'dart:convert';

Guide guideFromJson(String str) => Guide.fromJson(json.decode(str));

String guideToJson(Guide data) => json.encode(data.toJson());

class Guide {
  Guide({
    this.charges,
    this.emailId,
    this.facilityType,
    this.guideName,
    this.languagesKnown,
    this.listedStatus,
    this.mobileNo,
    this.yearsOfExp,
  });

  Charges charges;
  String emailId;
  String facilityType;
  String guideName;
  List<String> languagesKnown;
  bool listedStatus;
  String mobileNo;
  int yearsOfExp;

  factory Guide.fromJson(Map<String, dynamic> json) => Guide(
    charges: Charges.fromJson(json["charges"]),
    emailId: json["emailId"],
    facilityType: json["facilityType"],
    guideName: json["guideName"],
    languagesKnown: List<String>.from(json["languagesKnown"].map((x) => x)),
    listedStatus: json["listedStatus"],
    mobileNo: json["mobileNo"],
    yearsOfExp: json["yearsOfExp"],
  );

  Map<String, dynamic> toJson() => {
    "charges": charges.toJson(),
    "emailId": emailId,
    "facilityType": facilityType,
    "guideName": guideName,
    "languagesKnown": List<dynamic>.from(languagesKnown.map((x) => x)),
    "listedStatus": listedStatus,
    "mobileNo": mobileNo,
    "yearsOfExp": yearsOfExp,
  };
}

class Charges {
  Charges({
    this.baseCharge,
    this.currency,
    this.type,
  });

  BaseCharge baseCharge;
  String currency;
  String type;

  factory Charges.fromJson(Map<String, dynamic> json) => Charges(
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
