import 'package:flutter/material.dart';
import 'package:rick_and_morty_app/data/model/episode_model.dart';



class EpisodeTile extends StatelessWidget {
  final EpisodeModel episodeModel;

  const EpisodeTile({
    required this.episodeModel,

    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      color: Colors.blue.shade100,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 14,
            child: Column(
              children: [
                Text("Episode: ${episodeModel.episode}"),
                Text("Episode Name: ${episodeModel.name}"),
                Text("Episode airDate: ${episodeModel.airDate}"),
              ]
            ),
          )
      ]),
    );
  }
}
