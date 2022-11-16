class EpisodeModelList{
  final List<EpisodeModel> episodeModelList;

  const EpisodeModelList({
    required this.episodeModelList,
  });

  factory EpisodeModelList.fromJson(List<dynamic> json) {
    List<EpisodeModel> episodeModelListTransformed = json.map((e) => EpisodeModel.fromJson(e)).toList() ;
    return EpisodeModelList(episodeModelList: episodeModelListTransformed);
  }

}


class EpisodeModel {
    EpisodeModel({
      required this.id,
      required this.name,
      required this.airDate,
      required this.episode,
      required this.characters,
      required this.url,
      required this.created,
    });

    int id;
    String name;
    String airDate;
    String episode;
    List<String> characters;
    String url;
    DateTime created;

    factory EpisodeModel.fromJson(Map<String, dynamic> json) => EpisodeModel(
        id: json["id"],
        name: json["name"],
        airDate: json["air_date"],
        episode: json["episode"],
        characters: List<String>.from(json["characters"].map((x) => x)),
        url: json["url"],
        created: DateTime.parse(json["created"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "air_date": airDate,
        "episode": episode,
        "characters": List<dynamic>.from(characters.map((x) => x)),
        "url": url,
        "created": created.toIso8601String(),
    };
}
