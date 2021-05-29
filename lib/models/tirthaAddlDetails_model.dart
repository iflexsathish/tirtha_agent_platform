// To parse this JSON data, do
//
//     final tirthaAddlDetailsModel = tirthaAddlDetailsModelFromJson(jsonString);

import 'dart:convert';

TirthaAddlDetailsModel tirthaAddlDetailsModelFromJson(String str) => TirthaAddlDetailsModel.fromJson(json.decode(str));

String tirthaAddlDetailsModelToJson(TirthaAddlDetailsModel data) => json.encode(data.toJson());

class TirthaAddlDetailsModel {
  TirthaAddlDetailsModel({
    this.altitudeLevel,
    this.animals,
    this.caveDiameter,
    this.caveInPassage,
    this.caveLength,
    this.chariot,
    this.dressCode,
    this.dressCodeDetails,
    this.freeAccommodation,
    this.freeFood,
    this.freeTransport,
    this.hundi,
    this.kalyaniPond,
    this.onSeashore,
    this.prasadam,
    this.specialDarshan,
    this.speciality,
    this.stairStepsCount,
    this.stairsComplexity,
    this.stairsInvolved,
    this.surroundedByWater,
    this.trekDistance,
    this.trekRequired,
    this.walkInDistanceFromEntrance,
    this.weighingScale,
  });

  String altitudeLevel;
  List<String> animals;
  CaveDiameter caveDiameter;
  bool caveInPassage;
  CaveDiameter caveLength;
  bool chariot;
  bool dressCode;
  List<String> dressCodeDetails;
  bool freeAccommodation;
  bool freeFood;
  bool freeTransport;
  bool hundi;
  bool kalyaniPond;
  bool onSeashore;
  bool prasadam;
  bool specialDarshan;
  String speciality;
  int stairStepsCount;
  String stairsComplexity;
  bool stairsInvolved;
  bool surroundedByWater;
  CaveDiameter trekDistance;
  bool trekRequired;
  CaveDiameter walkInDistanceFromEntrance;
  bool weighingScale;

  factory TirthaAddlDetailsModel.fromJson(Map<String, dynamic> json) => TirthaAddlDetailsModel(
    altitudeLevel: json["altitudeLevel"],
    animals: List<String>.from(json["animals"].map((x) => x)),
    caveDiameter: CaveDiameter.fromJson(json["caveDiameter"]),
    caveInPassage: json["caveInPassage"],
    caveLength: CaveDiameter.fromJson(json["caveLength"]),
    chariot: json["chariot"],
    dressCode: json["dressCode"],
    dressCodeDetails: List<String>.from(json["dressCodeDetails"].map((x) => x)),
    freeAccommodation: json["freeAccommodation"],
    freeFood: json["freeFood"],
    freeTransport: json["freeTransport"],
    hundi: json["hundi"],
    kalyaniPond: json["kalyaniPond"],
    onSeashore: json["onSeashore"],
    prasadam: json["prasadam"],
    specialDarshan: json["specialDarshan"],
    speciality: json["speciality"],
    stairStepsCount: json["stairStepsCount"],
    stairsComplexity: json["stairsComplexity"],
    stairsInvolved: json["stairsInvolved"],
    surroundedByWater: json["surroundedByWater"],
    trekDistance: CaveDiameter.fromJson(json["trekDistance"]),
    trekRequired: json["trekRequired"],
    walkInDistanceFromEntrance: CaveDiameter.fromJson(json["walkInDistanceFromEntrance"]),
    weighingScale: json["weighingScale"],
  );

  Map<String, dynamic> toJson() => {
    "altitudeLevel": altitudeLevel,
    "animals": List<dynamic>.from(animals.map((x) => x)),
    "caveDiameter": caveDiameter.toJson(),
    "caveInPassage": caveInPassage,
    "caveLength": caveLength.toJson(),
    "chariot": chariot,
    "dressCode": dressCode,
    "dressCodeDetails": List<dynamic>.from(dressCodeDetails.map((x) => x)),
    "freeAccommodation": freeAccommodation,
    "freeFood": freeFood,
    "freeTransport": freeTransport,
    "hundi": hundi,
    "kalyaniPond": kalyaniPond,
    "onSeashore": onSeashore,
    "prasadam": prasadam,
    "specialDarshan": specialDarshan,
    "speciality": speciality,
    "stairStepsCount": stairStepsCount,
    "stairsComplexity": stairsComplexity,
    "stairsInvolved": stairsInvolved,
    "surroundedByWater": surroundedByWater,
    "trekDistance": trekDistance.toJson(),
    "trekRequired": trekRequired,
    "walkInDistanceFromEntrance": walkInDistanceFromEntrance.toJson(),
    "weighingScale": weighingScale,
  };
}

class CaveDiameter {
  CaveDiameter({
    this.metric,
    this.value,
  });

  String metric;
  int value;

  factory CaveDiameter.fromJson(Map<String, dynamic> json) => CaveDiameter(
    metric: json["metric"],
    value: json["value"],
  );

  Map<String, dynamic> toJson() => {
    "metric": metric,
    "value": value,
  };
}
