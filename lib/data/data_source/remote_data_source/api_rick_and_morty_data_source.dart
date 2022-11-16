import 'package:flutter/foundation.dart';
import 'package:rick_and_morty_app/data/model/character_model.dart';
import 'package:dio/dio.dart';
import 'package:rick_and_morty_app/data/model/episode_model.dart';
import 'package:rick_and_morty_app/data/model/location_model.dart';

class ApiRickAndMortyDataSource {
  var dio = Dio();
  int initPAge = 0;

  Future<CharacterModel> gethCaracterData(int characterId) async {
    try{
        final Response response = await dio.get('https://rickandmortyapi.com/api/character/$characterId');
        print(response.data);
      return CharacterModel.fromJson(response.data);
    } on DioError catch (e){
      var errorCode = e.response!.statusCode ?? 0;
      var errorMessage = e.response!.statusMessage ?? 'unknow';
      if(kDebugMode){
        print('gethCaracterData $errorCode');
        print('gethCaracterData $errorMessage');
      }
    } return CharacterModel.fromJson({});
  }

  Future<CharacterModelList> getcharactersListData() async {
    try{
        final Response response = await dio.get('https://rickandmortyapi.com/api/character');
        print('response.data[results] ${response.data['results']}');
      return CharacterModelList.fromJson(response.data['results']);
    } on DioError catch (e){
      var errorCode = e.response!.statusCode ?? 0;
      var errorMessage = e.response!.statusMessage ?? 'unknow';
      if(kDebugMode){
        print('getcharactersListData $errorCode');
        print('getcharactersListData $errorMessage');
      }
    } return CharacterModelList.fromJson([]);

  }

  Future<LocationModelList> getLocationsListData() async {
    try{
      final Response response = await dio.get('https://rickandmortyapi.com/api/location');
      print(response.data);
    return LocationModelList.fromJson(response.data['results']);
    }on DioError catch (e){
      var errorCode = e.response!.statusCode ?? 0;
      var errorMessage = e.response!.statusMessage ?? 'unknow';
      if(kDebugMode){
        print('getLocationsListData $errorCode');
        print('getLocationsListData $errorMessage');
      }
    } return LocationModelList.fromJson([]);

  }

  Future<EpisodeModelList> getEpisodesListData() async {
    try{
      final Response response = await dio.get('https://rickandmortyapi.com/api/episode');
      print(response.data);
    return EpisodeModelList.fromJson(response.data['results']);
    }on DioError catch (e){
      var errorCode = e.response!.statusCode ?? 0;
      var errorMessage = e.response!.statusMessage ?? 'unknow';
      if(kDebugMode){
        print('getEpisodesListData $errorCode');
        print('getEpisodesListData $errorMessage');
      }
    } return EpisodeModelList.fromJson([]);

  }
}