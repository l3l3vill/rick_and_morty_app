part of 'locations_list_bloc.dart';

abstract class LocationsListEvent extends Equatable {
  const LocationsListEvent();

  @override
  List<Object> get props => [];
}

class LoadLocationsListEvent extends LocationsListEvent{
  const LoadLocationsListEvent();
  
  @override
  List<Object> get props => [];
}