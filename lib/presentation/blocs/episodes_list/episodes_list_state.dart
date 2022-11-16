part of 'episodes_list_bloc.dart';

abstract class EpisodesListState extends Equatable {
  const EpisodesListState();
  
  @override
  List<Object> get props => [];
}

class EpisodesListInitialState extends EpisodesListState {
  const EpisodesListInitialState();

  @override
  List<Object> get props => [];
}

class EpisodesListLoadedState extends EpisodesListState {
  final EpisodeModelList episodeModelList;

  const EpisodesListLoadedState({
    required this.episodeModelList
  }); 

  @override
  List<Object> get props => [episodeModelList];
}
