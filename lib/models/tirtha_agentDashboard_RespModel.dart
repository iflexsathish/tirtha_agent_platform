// To parse this JSON data, do
//
//     final agentDashboard = agentDashboardFromJson(jsonString);

import 'dart:convert';

AgentDashboard agentDashboardFromJson(String str) => AgentDashboard.fromJson(json.decode(str));

String agentDashboardToJson(AgentDashboard data) => json.encode(data.toJson());

class AgentDashboard {
  AgentDashboard({
    this.content,
    this.pageable,
    this.totalPages,
    this.totalElements,
    this.last,
    this.number,
    this.sort,
    this.size,
    this.numberOfElements,
    this.first,
    this.empty,
  });

  List<Content> content;
  Pageable pageable;
  int totalPages;
  int totalElements;
  bool last;
  int number;
  Sort sort;
  int size;
  int numberOfElements;
  bool first;
  bool empty;

  factory AgentDashboard.fromJson(Map<String, dynamic> json) => AgentDashboard(
    content: List<Content>.from(json["content"].map((x) => Content.fromJson(x))),
    pageable: Pageable.fromJson(json["pageable"]),
    totalPages: json["totalPages"],
    totalElements: json["totalElements"],
    last: json["last"],
    number: json["number"],
    sort: Sort.fromJson(json["sort"]),
    size: json["size"],
    numberOfElements: json["numberOfElements"],
    first: json["first"],
    empty: json["empty"],
  );

  Map<String, dynamic> toJson() => {
    "content": List<dynamic>.from(content.map((x) => x.toJson())),
    "pageable": pageable.toJson(),
    "totalPages": totalPages,
    "totalElements": totalElements,
    "last": last,
    "number": number,
    "sort": sort.toJson(),
    "size": size,
    "numberOfElements": numberOfElements,
    "first": first,
    "empty": empty,
  };
}

class Content {
  Content({
    this.id,
    this.name,
    this.city,
    this.state,
  });

  String id;
  String name;
  String city;
  String state;

  factory Content.fromJson(Map<String, dynamic> json) => Content(
    id: json["id"],
    name: json["name"],
    city: json["city"],
    state: json["state"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "city": city,
    "state": state,
  };
}

class Pageable {
  Pageable({
    this.sort,
    this.offset,
    this.pageNumber,
    this.pageSize,
    this.paged,
    this.unpaged,
  });

  Sort sort;
  int offset;
  int pageNumber;
  int pageSize;
  bool paged;
  bool unpaged;

  factory Pageable.fromJson(Map<String, dynamic> json) => Pageable(
    sort: Sort.fromJson(json["sort"]),
    offset: json["offset"],
    pageNumber: json["pageNumber"],
    pageSize: json["pageSize"],
    paged: json["paged"],
    unpaged: json["unpaged"],
  );

  Map<String, dynamic> toJson() => {
    "sort": sort.toJson(),
    "offset": offset,
    "pageNumber": pageNumber,
    "pageSize": pageSize,
    "paged": paged,
    "unpaged": unpaged,
  };
}

class Sort {
  Sort({
    this.sorted,
    this.unsorted,
    this.empty,
  });

  bool sorted;
  bool unsorted;
  bool empty;

  factory Sort.fromJson(Map<String, dynamic> json) => Sort(
    sorted: json["sorted"],
    unsorted: json["unsorted"],
    empty: json["empty"],
  );

  Map<String, dynamic> toJson() => {
    "sorted": sorted,
    "unsorted": unsorted,
    "empty": empty,
  };
}
