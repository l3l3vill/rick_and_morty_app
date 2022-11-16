
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty_app/locator.dart';
import 'package:rick_and_morty_app/presentation/views/characters_list/characters_list_view.dart';

import '../../blocs/characters_list/character_list_bloc.dart';

class CharacterListProvider extends StatelessWidget {
  const CharacterListProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<CharacterListBloc>()..add(LoadCharactersListDataEvent()) ,
      child: BlocBuilder<CharacterListBloc, CharacterListState>(
        builder: (context, state) {
          if(state is CharacterListLoadedState){
            return CharactersListView( 
            characterModelList: state.characterList,
            );
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }
}


