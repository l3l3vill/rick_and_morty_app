

import 'package:rick_and_morty_app/data/model/location_model.dart';

import '../repositories/apiRickAndMortyRepository.dart';

class GetLocationListUseCase{
  final ApiRickAndMortyRepository apiRickAndMortyRepository;

  GetLocationListUseCase(this.apiRickAndMortyRepository); 

  Future<LocationModelList> call() async {
    return await apiRickAndMortyRepository.getLocationsListDataDataFromApi();
  } 

}