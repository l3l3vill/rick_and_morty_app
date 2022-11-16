class LocationModelList{
  final List<LocationModel> locationModelList;
  const LocationModelList({
    required this.locationModelList,
  });

  factory LocationModelList.fromJson(List<dynamic> json) => 
    LocationModelList(locationModelList: json.map(
      (location) => LocationModel.fromJson(location)
    ).toList() 
    ); 

}

class LocationModel {
    LocationModel({
      required this.id,
      required this.name,
      required this.type,
      required this.dimension,
      required this.residents,
      required this.url,
      required this.created,
    });

    int id;
    String name;
    String type;
    String dimension;
    List<String> residents;
    String url;
    DateTime created;

    factory LocationModel.fromJson(Map<String, dynamic> json) => LocationModel(
        id: json["id"],
        name: json["name"],
        type: json["type"],
        dimension: json["dimension"],
        residents: List<String>.from(json["residents"].map((x) => x)),
        url: json["url"],
        created: DateTime.parse(json["created"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "type": type,
        "dimension": dimension,
        "residents": List<dynamic>.from(residents.map((x) => x)),
        "url": url,
        "created": created.toIso8601String(),
    };
}
