import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:tirtha_agent/models/tirthaAddlDetails_model.dart';
import '../GlobalVals.dart' as globals;

Future<String> saveTirthaAddlDetails(
    String altitudeLevel,
    List<String> animals,
    int caveDiameterValue,
    String caveDiameterMetric,
    bool caveInPassage,
    int caveLengthValue,
    String caveLengthMetric,
    bool chariot,
    bool dressCode,
    List<String> dressCodeDetails,
    bool freeAccommodation,
    bool freeFood,
    bool freeTransport,
    bool hundi,
    bool kalyaniPond,
    bool onSeashore,
    bool prasadam,
    bool specialDarshan,
    String speciality,
    int stairStepsCount,
    String stairsComplexity,
    bool stairsInvolved,
    bool surroundedByWater,
    int trekDistanceValue,
    String trekDistanceMetric,
    bool trekRequired,
    int walkInDistanceFromEntranceValue,
    String walkInDistanceFromEntranceMetric,
    bool weighingScale
    ) async {

  final caveDia=CaveDiameter(value:caveDiameterValue , metric:caveDiameterMetric);
  final caveLen=CaveDiameter(value:caveLengthValue , metric:caveLengthMetric);
  final trekDis=CaveDiameter(value:trekDistanceValue , metric:trekDistanceMetric);
  final walkDis=CaveDiameter(value:walkInDistanceFromEntranceValue , metric:walkInDistanceFromEntranceMetric);

  final TirthaAddlDetailsModelVal=TirthaAddlDetailsModel(
      altitudeLevel: altitudeLevel,
      animals: animals,
      caveDiameter: caveDia,
      caveInPassage: caveInPassage,
      caveLength: caveLen,
      chariot: chariot,
      dressCode: dressCode,
      dressCodeDetails: dressCodeDetails,
      freeAccommodation: freeAccommodation,
      freeFood: freeFood,
      freeTransport: freeTransport,
      hundi: hundi,
      kalyaniPond: kalyaniPond,
      onSeashore: onSeashore,
      prasadam: prasadam,
      specialDarshan: specialDarshan,
      speciality: speciality,
      stairStepsCount: stairStepsCount,
      stairsComplexity: stairsComplexity,
      stairsInvolved: stairsInvolved,
      surroundedByWater: surroundedByWater,
      trekDistance: trekDis,
      trekRequired: trekRequired,
      walkInDistanceFromEntrance: walkDis,
      weighingScale: weighingScale,
  );

  // final String apiUrl = "http://10.0.2.2:7070/tirtha/tirtha/seva-details";
  Map<String, String> headers = {"Content-type": "application/json"};
  Map<String, String> queryParameters = {"tirthaId": globals.tirthaId};
  // Map<String, String> queryParameters = {"tirthaId": "60a13150ff31be1560ee2666"};

  print("Global tirtha id "+globals.tirthaId);

  var apiUrl = Uri.http('10.0.2.2:7070', '/tirtha/tirtha/additional-info', queryParameters);

  String body =tirthaAddlDetailsModelToJson(TirthaAddlDetailsModelVal);
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

