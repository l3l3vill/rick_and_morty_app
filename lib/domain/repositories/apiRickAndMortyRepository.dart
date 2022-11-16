import 'package:rick_and_morty_app/data/model/episode_model.dart';
import 'package:rick_and_morty_app/data/model/location_model.dart';

import '../../data/model/character_model.dart';

abstract class ApiRickAndMortyRepository  {


  Future<CharacterModel>gethCaracterDataFromApi(int characterId);
  Future<CharacterModelList>getcharactersListDataFromApi();
  Future<LocationModelList>getLocationsListDataDataFromApi();
  Future<EpisodeModelList>getEpisodesListDataFromApi();

}