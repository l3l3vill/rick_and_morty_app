import 'package:flutter/material.dart';
import 'package:rick_and_morty_app/data/model/character_model.dart';

class CharacterDetailsView extends StatelessWidget {
  final CharacterModel characterModel;
  const CharacterDetailsView({
    super.key,
    required this.characterModel
    });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar() ,
      body: SingleChildScrollView(
        child: Card(
        elevation: 20,
        color: Colors.blue.shade100,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              child: Column(
                children: [
                  Image.network(characterModel.image),
                  Text("Character Name: ${characterModel.name}"),
                  Text("Character gender: ${characterModel.gender}"),
                  Text("Character origin: ${characterModel.origin}"),
                  Text("Character species: ${characterModel.species}"),
                  Text("Character location: ${characterModel.location}"),
                  Text("Character id: ${characterModel.id}"),
                ]
              ),
            )
        ]),
          ),
      )
    );
  }
}