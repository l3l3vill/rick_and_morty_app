
class CharacterModelList{
  List<CharacterModel> characterModelList;

  CharacterModelList({
    required this.characterModelList
  });

    factory CharacterModelList.fromJson(List<dynamic> json) { 
      List<CharacterModel> characterModelListConverted = json.map(
        (item) => CharacterModel.fromJson(item)
      ).toList();
      
      // for (Map<String,dynamic> item in result ){
      //   CharacterModel modifiedItemResult = CharacterModel.fromJson(item);
      //   characterModelListConverted.add(modifiedItemResult);
      // }
      return CharacterModelList(characterModelList: characterModelListConverted );
    } 
    Map<String, dynamic> toJson() => {
        "results": characterModelList,
    };  
}

class CharacterModel {
    CharacterModel({
      required this.id,
      required this.name,
      required this.status,
      required this.species,
      required this.type,
      required this.gender,
      required this.origin,
      required this.location,
      required this.image,
      required this.episode,
      required this.url,
      required this.created,
    });

    int id;
    String name;
    String status;
    String species;
    String type;
    String gender;
    Map<String, dynamic> origin;
    Map<String, dynamic> location;
    String image;
    List<String> episode;
    String url;
    DateTime created;

    factory CharacterModel.fromJson(Map<String, dynamic> json) => CharacterModel(
        id: json["id"],
        name: json["name"],
        status: json["status"],
        species: json["species"],
        type: json["type"],
        gender: json["gender"],
        origin: json["origin"],
        location: json["location"],
        image: json["image"],
        episode: List<String>.from(json["episode"].map((x) => x)),
        url: json["url"],
        created: DateTime.parse(json["created"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "status": status,
        "species": species,
        "type": type,
        "gender": gender,
        "origin": origin,
        "location": location,
        "image": image,
        "episode": List<dynamic>.from(episode.map((x) => x)),
        "url": url,
        "created": created.toIso8601String(),
    };
}
