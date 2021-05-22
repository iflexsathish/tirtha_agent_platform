// To parse this JSON data, do
//
//     final tirthaSnippetModel = tirthaSnippetModelFromJson(jsonString);

import 'dart:convert';

TirthaSnippetModel tirthaSnippetModelFromJson(String str) => TirthaSnippetModel.fromJson(json.decode(str));

String tirthaSnippetModelToJson(TirthaSnippetModel data) => json.encode(data.toJson());

class TirthaSnippetModel {
  TirthaSnippetModel({
    this.serialNum,
    this.snippetDescription,
    this.snippetEndPoint,
    this.snippetUrl,
  });

  int serialNum;
  String snippetDescription;
  String snippetEndPoint;
  String snippetUrl;

  factory TirthaSnippetModel.fromJson(Map<String, dynamic> json) => TirthaSnippetModel(
    serialNum: json["serialNum"],
    snippetDescription: json["snippetDescription"],
    snippetEndPoint: json["snippetEndPoint"],
    snippetUrl: json["snippetURL"],
  );

  Map<String, dynamic> toJson() => {
    "serialNum": serialNum,
    "snippetDescription": snippetDescription,
    "snippetEndPoint": snippetEndPoint,
    "snippetURL": snippetUrl,
  };
}
