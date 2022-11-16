import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty_app/locator.dart';
import 'package:rick_and_morty_app/presentation/views/character_details/character_detais_view.dart';

import '../../blocs/character/character_bloc.dart';

class CharacterProvider extends StatelessWidget {
  final int characterId;
  const CharacterProvider({
    required this.characterId,
    super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<CharacterBloc>()..add(CharachterLoadedEvent(charachterId: characterId)),
      child: BlocBuilder<CharacterBloc , CharacterState>(builder: (context, state) {
        if(state  is CharacterLoadedState){
          return CharacterDetailsView(characterModel: state.characterModel);
        }
        return Center(child: CircularProgressIndicator());

      },
      
      ),  
    );
  }
}