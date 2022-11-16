part of 'episodes_list_bloc.dart';

abstract class EpisodesListEvent extends Equatable {
  const EpisodesListEvent();

  @override
  List<Object> get props => [];
}

class LoadEpisodesListEvent extends EpisodesListEvent {
  const LoadEpisodesListEvent();
  
  @override
  List<Object> get props => [];
}
