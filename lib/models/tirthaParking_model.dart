// To parse this JSON data, do
//
//     final parking = parkingFromJson(jsonString);

import 'dart:convert';

Parking parkingFromJson(String str) => Parking.fromJson(json.decode(str));

String parkingToJson(Parking data) => json.encode(data.toJson());

class Parking {
  Parking({
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
  List<Charge> charges;
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

  factory Parking.fromJson(Map<String, dynamic> json) => Parking(
    address: Address.fromJson(json["address"]),
    carWash: json["carWash"],
    charges: List<Charge>.from(json["charges"].map((x) => Charge.fromJson(x))),
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
    "charges": List<dynamic>.from(charges.map((x) => x.toJson())),
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

class Charge {
  Charge({
    this.addonCharge,
    this.baseCharge,
    this.currency,
    this.type,
    this.vehicleTypes,
  });

  AddonChargeClass addonCharge;
  AddonChargeClass baseCharge;
  String currency;
  String type;
  String vehicleTypes;

  factory Charge.fromJson(Map<String, dynamic> json) => Charge(
    addonCharge: AddonChargeClass.fromJson(json["addonCharge"]),
    baseCharge: AddonChargeClass.fromJson(json["baseCharge"]),
    currency: json["currency"],
    type: json["type"],
    vehicleTypes: json["vehicleTypes"],
  );

  Map<String, dynamic> toJson() => {
    "addonCharge": addonCharge.toJson(),
    "baseCharge": baseCharge.toJson(),
    "currency": currency,
    "type": type,
    "vehicleTypes": vehicleTypes,
  };
}

class AddonChargeClass {
  AddonChargeClass({
    this.cost,
    this.timeQuantity,
    this.unitType,
  });

  int cost;
  int timeQuantity;
  String unitType;

  factory AddonChargeClass.fromJson(Map<String, dynamic> json) => AddonChargeClass(
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
