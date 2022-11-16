import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:rick_and_morty_app/data/model/location_model.dart';
import 'package:rick_and_morty_app/domain/use_cases/get_location_list_uc.dart';
import 'package:rick_and_morty_app/locator.dart';

part 'locations_list_event.dart';
part 'locations_list_state.dart';

class LocationsListBloc extends Bloc<LocationsListEvent, LocationsListState> {
  LocationsListBloc() : super(LocationsListInitialState()) {
    on<LoadLocationsListEvent>(_onLoadLocationsListEvent);
  }

  void _onLoadLocationsListEvent(
    LoadLocationsListEvent event,
    Emitter<LocationsListState> emit
  ) async{
    var locationsListData = await getIt.get<GetLocationListUseCase>().call();
    emit(LocationsListLoadedState(locationModelList: locationsListData));
  }
}

