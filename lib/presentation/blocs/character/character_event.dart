part of 'character_bloc.dart';

abstract class CharacterEvent extends Equatable {
  const CharacterEvent();
  
  @override
  List<Object?> get props => [];
}

class CharachterLoadedEvent extends CharacterEvent {
  final int charachterId;
  const CharachterLoadedEvent({
    required this.charachterId,
  });

  @override
  List<Object?> get props => [charachterId];

}


