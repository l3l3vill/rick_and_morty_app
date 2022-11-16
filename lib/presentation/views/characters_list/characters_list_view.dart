import 'package:flutter/material.dart';
import 'package:rick_and_morty_app/data/model/character_model.dart';

import 'character_tile.dart';


class CharactersListView extends StatelessWidget {

  final CharacterModelList characterModelList;
  const CharactersListView({
    required this.characterModelList,
    super.key
    });

  @override
  Widget build(BuildContext context) {
      return ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: characterModelList.characterModelList.length,
        separatorBuilder: (context, index) => const Divider(
          height: 1.5 
        ),
        itemBuilder: (BuildContext context, int index) => CharacterTile(
          characterModel: characterModelList.characterModelList[index] 
        ),
      );
  }
}

