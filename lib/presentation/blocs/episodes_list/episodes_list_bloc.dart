import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:rick_and_morty_app/data/model/episode_model.dart';
import 'package:rick_and_morty_app/domain/use_cases/get_episode_list_uc.dart';

import '../../../locator.dart';

part 'episodes_list_event.dart';
part 'episodes_list_state.dart';

class EpisodesListBloc extends Bloc<EpisodesListEvent, EpisodesListState> {
  EpisodesListBloc() : super(EpisodesListInitialState()) {
    on<LoadEpisodesListEvent>(_onLoadEpisodesListEvent);
  }
  void _onLoadEpisodesListEvent(
    LoadEpisodesListEvent event,
    Emitter<EpisodesListState> emit 
  ) async {
    var episodesListData = await getIt.get<GetEpisodeListUseCase>().call();
    emit(EpisodesListLoadedState(episodeModelList: episodesListData));
  }
}
