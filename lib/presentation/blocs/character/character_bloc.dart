import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:rick_and_morty_app/data/model/character_model.dart';

import '../../../domain/use_cases/get_character_uc.dart';
import '../../../locator.dart';


part 'character_event.dart';
part 'character_state.dart';

class CharacterBloc extends Bloc<CharacterEvent, CharacterState> {
  CharacterBloc() : super(CharacterInitialState()) {
    on<CharachterLoadedEvent>(_onCharachterLoadedState);
  }

  void _onCharachterLoadedState(
    CharachterLoadedEvent event,
    Emitter<CharacterState> emit,
  ) async{
    var characterData = await getIt.get<GetCharacterUseCase>().call(event.charachterId);
    emit(CharacterLoadedState(characterModel:characterData));
  }
}
