part of 'character_list_bloc.dart';

abstract class CharacterListEvent extends Equatable {
  const CharacterListEvent();
}

class LoadCharactersListDataEvent extends CharacterListEvent{
  const LoadCharactersListDataEvent();
  @override
  List<Object?> get props => [];
}
