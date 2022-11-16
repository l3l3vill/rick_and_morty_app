part of 'locations_list_bloc.dart';

abstract class LocationsListState extends Equatable {
  const LocationsListState();
  
  @override
  List<Object> get props => [];
}

class LocationsListInitialState extends LocationsListState {
  @override
  List<Object> get props => [];
}

class LocationsListLoadedState extends LocationsListState {
  final LocationModelList locationModelList;

  const LocationsListLoadedState({
    required this.locationModelList
  });

  @override
  List<Object> get props => [locationModelList];
}
