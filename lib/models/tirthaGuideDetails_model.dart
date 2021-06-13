// To parse this JSON data, do
//
//     final tirthaGuideDetailsModel = tirthaGuideDetailsModelFromJson(jsonString);

import 'dart:convert';

TirthaGuideDetailsModel tirthaGuideDetailsModelFromJson(String str) => TirthaGuideDetailsModel.fromJson(json.decode(str));

String tirthaGuideDetailsModelToJson(TirthaGuideDetailsModel data) => json.encode(data.toJson());

class TirthaGuideDetailsModel {
  TirthaGuideDetailsModel({
    this.album,
    this.emailId,
    this.facilityType,
    this.guideName,
    this.id,
    this.languagesKnown,
    this.listedStatus,
    this.mobileNo,
    this.yearsOfExp,
  });

  Album album;
  String emailId;
  String facilityType;
  String guideName;
  String id;
  List<String> languagesKnown;
  bool listedStatus;
  String mobileNo;
  int yearsOfExp;

  factory TirthaGuideDetailsModel.fromJson(Map<String, dynamic> json) => TirthaGuideDetailsModel(
    album: Album.fromJson(json["album"]),
    emailId: json["emailId"],
    facilityType: json["facilityType"],
    guideName: json["guideName"],
    id: json["id"],
    languagesKnown: List<String>.from(json["languagesKnown"].map((x) => x)),
    listedStatus: json["listedStatus"],
    mobileNo: json["mobileNo"],
    yearsOfExp: json["yearsOfExp"],
  );

  Map<String, dynamic> toJson() => {
    "album": album.toJson(),
    "emailId": emailId,
    "facilityType": facilityType,
    "guideName": guideName,
    "id": id,
    "languagesKnown": List<dynamic>.from(languagesKnown.map((x) => x)),
    "listedStatus": listedStatus,
    "mobileNo": mobileNo,
    "yearsOfExp": yearsOfExp,
  };
}

class Album {
  Album({
    this.albumTitle,
    this.id,
    this.imagesWithDescription,
  });

  String albumTitle;
  String id;
  List<ImagesWithDescription> imagesWithDescription;

  factory Album.fromJson(Map<String, dynamic> json) => Album(
    albumTitle: json["albumTitle"],
    id: json["id"],
    imagesWithDescription: List<ImagesWithDescription>.from(json["imagesWithDescription"].map((x) => ImagesWithDescription.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "albumTitle": albumTitle,
    "id": id,
    "imagesWithDescription": List<dynamic>.from(imagesWithDescription.map((x) => x.toJson())),
  };
}

class ImagesWithDescription {
  ImagesWithDescription({
    this.description,
    this.id,
    this.imageFileName,
  });

  String description;
  String id;
  String imageFileName;

  factory ImagesWithDescription.fromJson(Map<String, dynamic> json) => ImagesWithDescription(
    description: json["description"],
    id: json["id"],
    imageFileName: json["imageFileName"],
  );

  Map<String, dynamic> toJson() => {
    "description": description,
    "id": id,
    "imageFileName": imageFileName,
  };
}
