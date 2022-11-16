// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:rick_and_morty_app/data/model/character_model.dart';
import 'package:rick_and_morty_app/data/model/location_model.dart';
import 'package:rick_and_morty_app/data/model/episode_model.dart';

import '../../domain/repositories/apiRickAndMortyRepository.dart';
import '../data_source/remote_data_source/api_rick_and_morty_data_source.dart';

class apiRickAndMortyRepositoryImpl extends ApiRickAndMortyRepository {
  final ApiRickAndMortyDataSource apiRickAndMortyDataSource;
  apiRickAndMortyRepositoryImpl({
    required this.apiRickAndMortyDataSource,
  });
  
  @override
  Future<CharacterModelList> getcharactersListDataFromApi() async {
    return await apiRickAndMortyDataSource.getcharactersListData();
  }
  
  @override
  Future<CharacterModel> gethCaracterDataFromApi(int characterId) async {
    return await apiRickAndMortyDataSource.gethCaracterData(characterId);

  }

  @override
  Future<EpisodeModelList> getEpisodesListDataFromApi() async {
    return await apiRickAndMortyDataSource.getEpisodesListData();
  }

  @override
  Future<LocationModelList> getLocationsListDataDataFromApi() async{
    return await apiRickAndMortyDataSource.getLocationsListData();
  }


}
