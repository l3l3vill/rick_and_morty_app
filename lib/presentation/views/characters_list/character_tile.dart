import 'package:flutter/material.dart';
import 'package:rick_and_morty_app/data/model/character_model.dart';

import '../../../config/constants/routes.dart';


class CharacterTile extends StatelessWidget {
  final CharacterModel characterModel;

  const CharacterTile({
    required this.characterModel,

    super.key
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, Routes.characterDetailRoute,
          arguments: { 'id': characterModel.id, }
        );
      },
      child: Card(
        elevation: 20,
        color: Colors.blue.shade100,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 14,
              child: Column(
                children: [
                  Text("Character Name: ${characterModel.name}"),
                  Text("Character Species: ${characterModel.species}"),
                  Text("Character Status: ${characterModel.status}"),
                ]
              ),
            )
        ]),
      ),

      );
  }
}
