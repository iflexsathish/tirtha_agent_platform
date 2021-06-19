// To parse this JSON data, do
//
//     final tirthaParkingDetailsModel = tirthaParkingDetailsModelFromJson(jsonString);

import 'dart:convert';

TirthaParkingDetailsModel tirthaParkingDetailsModelFromJson(String str) => TirthaParkingDetailsModel.fromJson(json.decode(str));

String tirthaParkingDetailsModelToJson(TirthaParkingDetailsModel data) => json.encode(data.toJson());

class TirthaParkingDetailsModel {
  TirthaParkingDetailsModel({
    this.address,
    this.carWash,
    this.charges,
    this.distanceToTirtha,
    this.driverFacilities,
    this.dropOffFacilityAvailable,
    this.extraDetails,
    this.facilityType,
    this.id,
    this.locationCoordinates,
    this.name,
    this.ownedByTirtha,
    this.parkingType,
    this.restRooms,
    this.timings,
    this.valetParking,
  });

  Address address;
  bool carWash;
  Charges charges;
  DistanceToTirtha distanceToTirtha;
  bool driverFacilities;
  bool dropOffFacilityAvailable;
  ExtraDetails extraDetails;
  String facilityType;
  String id;
  LocationCoordinates locationCoordinates;
  String name;
  bool ownedByTirtha;
  String parkingType;
  bool restRooms;
  Timings timings;
  bool valetParking;

  factory TirthaParkingDetailsModel.fromJson(Map<String, dynamic> json) => TirthaParkingDetailsModel(
    address: Address.fromJson(json["address"]),
    carWash: json["carWash"],
    charges: Charges.fromJson(json["charges"]),
    distanceToTirtha: DistanceToTirtha.fromJson(json["distanceToTirtha"]),
    driverFacilities: json["driverFacilities"],
    dropOffFacilityAvailable: json["dropOffFacilityAvailable"],
    extraDetails: ExtraDetails.fromJson(json["extraDetails"]),
    facilityType: json["facilityType"],
    id: json["id"],
    locationCoordinates: LocationCoordinates.fromJson(json["locationCoordinates"]),
    name: json["name"],
    ownedByTirtha: json["ownedByTirtha"],
    parkingType: json["parkingType"],
    restRooms: json["restRooms"],
    timings: Timings.fromJson(json["timings"]),
    valetParking: json["valetParking"],
  );

  Map<String, dynamic> toJson() => {
    "address": address.toJson(),
    "carWash": carWash,
    "charges": charges.toJson(),
    "distanceToTirtha": distanceToTirtha.toJson(),
    "driverFacilities": driverFacilities,
    "dropOffFacilityAvailable": dropOffFacilityAvailable,
    "extraDetails": extraDetails.toJson(),
    "facilityType": facilityType,
    "id": id,
    "locationCoordinates": locationCoordinates.toJson(),
    "name": name,
    "ownedByTirtha": ownedByTirtha,
    "parkingType": parkingType,
    "restRooms": restRooms,
    "timings": timings.toJson(),
    "valetParking": valetParking,
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

class Charges {
  Charges({
    this.bicycle,
  });

  Bicycle bicycle;

  factory Charges.fromJson(Map<String, dynamic> json) => Charges(
    bicycle: Bicycle.fromJson(json["BICYCLE"]),
  );

  Map<String, dynamic> toJson() => {
    "BICYCLE": bicycle.toJson(),
  };
}

class Bicycle {
  Bicycle({
    this.addonCharge,
    this.currency,
    this.minimumChargeTimeUnit,
    this.minimumChargeValue,
    this.timeQuantity,
    this.type,
  });

  AddonCharge addonCharge;
  String currency;
  String minimumChargeTimeUnit;
  int minimumChargeValue;
  int timeQuantity;
  String type;

  factory Bicycle.fromJson(Map<String, dynamic> json) => Bicycle(
    addonCharge: AddonCharge.fromJson(json["addonCharge"]),
    currency: json["currency"],
    minimumChargeTimeUnit: json["minimumChargeTimeUnit"],
    minimumChargeValue: json["minimumChargeValue"],
    timeQuantity: json["timeQuantity"],
    type: json["type"],
  );

  Map<String, dynamic> toJson() => {
    "addonCharge": addonCharge.toJson(),
    "currency": currency,
    "minimumChargeTimeUnit": minimumChargeTimeUnit,
    "minimumChargeValue": minimumChargeValue,
    "timeQuantity": timeQuantity,
    "type": type,
  };
}

class AddonCharge {
  AddonCharge({
    this.hours,
  });

  int hours;

  factory AddonCharge.fromJson(Map<String, dynamic> json) => AddonCharge(
    hours: json["HOURS"],
  );

  Map<String, dynamic> toJson() => {
    "HOURS": hours,
  };
}

class DistanceToTirtha {
  DistanceToTirtha({
    this.metrics,
    this.value,
  });

  String metrics;
  int value;

  factory DistanceToTirtha.fromJson(Map<String, dynamic> json) => DistanceToTirtha(
    metrics: json["metrics"],
    value: json["value"],
  );

  Map<String, dynamic> toJson() => {
    "metrics": metrics,
    "value": value,
  };
}

class ExtraDetails {
  ExtraDetails();

  factory ExtraDetails.fromJson(Map<String, dynamic> json) => ExtraDetails(
  );

  Map<String, dynamic> toJson() => {
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

class Timings {
  Timings({
    this.endTime,
    this.reportingTime,
    this.startTime,
  });

  String endTime;
  String reportingTime;
  String startTime;

  factory Timings.fromJson(Map<String, dynamic> json) => Timings(
    endTime: json["endTime"],
    reportingTime: json["reportingTime"],
    startTime: json["startTime"],
  );

  Map<String, dynamic> toJson() => {
    "endTime": endTime,
    "reportingTime": reportingTime,
    "startTime": startTime,
  };
}
