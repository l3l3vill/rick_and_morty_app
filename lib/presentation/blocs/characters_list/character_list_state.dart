part of 'character_list_bloc.dart';

abstract class CharacterListState extends Equatable {
  const CharacterListState();
  
  @override
  List<Object> get props => [];
}

class CharacterListInitialState extends CharacterListState {
  CharacterListInitialState();

  @override
  List<Object> get props => [];
}


class CharacterListLoadedState extends CharacterListState {
  final CharacterModelList characterList;
  
  CharacterListLoadedState({
   required this.characterList,
  });
  
  @override
  List<Object> get props => [characterList];

}
