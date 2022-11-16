import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:rick_and_morty_app/locator.dart';

import '../../../data/model/character_model.dart';
import '../../../domain/use_cases/get_character_list_uc.dart';

part 'character_list_event.dart';
part 'character_list_state.dart';

class CharacterListBloc extends Bloc<CharacterListEvent, CharacterListState> {
  CharacterListBloc() : super(CharacterListInitialState()) {
    on<LoadCharactersListDataEvent>(_onLoadCharacterListEvent);
  }

  void _onLoadCharacterListEvent(
    LoadCharactersListDataEvent event,
    Emitter<CharacterListState> emit
  ) async{
    var characterListData = await getIt.get<GetCharacterListUseCase>().call();
    emit(CharacterListLoadedState(characterList:characterListData));
  }

}
