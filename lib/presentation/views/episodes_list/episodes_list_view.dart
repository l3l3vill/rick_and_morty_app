import 'package:flutter/material.dart';
import 'package:rick_and_morty_app/data/model/episode_model.dart';
import 'package:rick_and_morty_app/presentation/views/episodes_list/episodes_tile.dart';

class EpisodesListView extends StatelessWidget {
  final EpisodeModelList episodeModelList;
  const EpisodesListView({
    required this.episodeModelList,
    super.key
  });

  @override
  Widget build(BuildContext context) {
      return ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: episodeModelList.episodeModelList.length,
        separatorBuilder: (context, index) => const Divider(
          height: 1.5 
        ),
        itemBuilder: (BuildContext context, int index) => EpisodeTile(
          episodeModel: episodeModelList.episodeModelList[index] 
        ),
      );
  }
}