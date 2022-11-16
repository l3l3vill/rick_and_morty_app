// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'character_bloc.dart';

abstract class CharacterState extends Equatable {
  const CharacterState();
  @override
  List<Object?> get props => [];  

}

class CharacterInitialState extends CharacterState {
  CharacterInitialState();

  @override
  List<Object?> get props => [];
}

class CharacterLoadedState extends CharacterState {
  final CharacterModel characterModel;
  CharacterLoadedState({
    required this.characterModel,
  });

  @override
  List<Object?> get props => [
    characterModel
  ];
}
