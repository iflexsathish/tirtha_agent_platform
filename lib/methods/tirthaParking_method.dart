import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:flutter/services.dart' show rootBundle;
import 'package:http/http.dart';
import 'package:tirtha_agent/models/tirthaParking_model.dart';
import '../pages/agentCommons.dart' as commons;
import '../GlobalVals.dart' as globals;

Future<String> saveTirthaParking(
    String name,
    String parkingType,
    String address1,
    String address2,
    String state,
    String district,
    String city,
    String pincode,
    int location,
    String openTime,
    String closeTime,
    int distanceToTirtha,
    String distanceMetric,
    int parkingBaseFee,
    int baseFeeBasis,
    String baseFeeBasisMetric,
    int addOnFee,
    int addonBasis,
    String addonBasisMetric,
    bool driverFacilities,
    bool valetParking,
    bool carWash,
    bool dropOff,
    bool restRooms,
    bool tirthaManaged) async {

  final address=Address(addressLine1:address1 , addressLine2:address2 , addressType: "PERMANENT", city: city,district: district,pinCode: pincode,state: state);
  final locationCoordinates=LocationCoordinates(latitude: 12345,longitude: 3456);
  final parkingTimingRecord=Timings(startTime: openTime,endTime: closeTime,reportingTime: openTime);
  final distancetotirtha=DistanceToTirtha(value:distanceToTirtha , metrics:distanceMetric);
  final basecharge=AddonChargeClass(cost:parkingBaseFee, timeQuantity: baseFeeBasis, unitType: baseFeeBasisMetric);
  final addoncharge=AddonChargeClass(cost:addOnFee, timeQuantity: addonBasis, unitType: addonBasisMetric);
  final chargesRecord=Charge(baseCharge: basecharge, addonCharge: addoncharge, currency: "INR", type: "FLAT", vehicleTypes: "ALL");
  final List<Charge> charge = [chargesRecord];
  final addlDetails=ExtraDetails();


  final tirthaParkingDetails=Parking(
      name: name, address: address,distanceToTirtha: distancetotirtha,
      facilityType: "PARKING", locationCoordinates: locationCoordinates,
      parkingType: parkingType, timings: parkingTimingRecord,
      charges: charge,
      carWash: carWash, driverFacilities: driverFacilities,
      dropOffFacilityAvailable: dropOff, ownedByTirtha: tirthaManaged,
      restRooms: restRooms, valetParking: valetParking, extraDetails: addlDetails);

  // final String apiUrl = "http://10.0.2.2:7070/tirtha/tirtha/seva-details";
  Map<String, String> headers = {"Content-type": "application/json"};
  Map<String, String> queryParameters = {"tirthaId": globals.tirthaId};

  print("Global tirtha id "+globals.tirthaId);

  var apiUrl = Uri.http('10.0.2.2:7070', '/tirtha/tirtha/facilities/parking', queryParameters);

  String body =parkingToJson(tirthaParkingDetails);
  print("Request body: "+body);

  Response response = await post(apiUrl, headers: headers, body: body);
  int statusCode = response.statusCode;
  print("Response code:"+ statusCode.toString());


  if (response.statusCode == 201 || response.statusCode == 200) {
    return statusCode.toString();
  } else {
    return null;
  }
}
