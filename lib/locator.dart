import 'package:get_it/get_it.dart';
import 'package:rick_and_morty_app/data/repositories_impl/apiRickAndMortyRepositoryImpl.dart';
import 'package:rick_and_morty_app/domain/repositories/apiRickAndMortyRepository.dart';
import 'package:rick_and_morty_app/domain/use_cases/get_character_uc.dart';
import 'package:rick_and_morty_app/domain/use_cases/get_episode_list_uc.dart';
import 'package:rick_and_morty_app/domain/use_cases/get_location_list_uc.dart';
import 'package:rick_and_morty_app/presentation/blocs/character/character_bloc.dart';
import 'package:rick_and_morty_app/presentation/blocs/characters_list/character_list_bloc.dart';
import 'package:rick_and_morty_app/presentation/blocs/global_app/global_app_bloc.dart';
import 'package:rick_and_morty_app/presentation/blocs/locations_list/locations_list_bloc.dart';
import 'package:rick_and_morty_app/presentation/blocs/nav_bar/nav_bar_bloc.dart';

import 'data/data_source/remote_data_source/api_rick_and_morty_data_source.dart';
import 'domain/use_cases/get_character_list_uc.dart';
import 'presentation/blocs/episodes_list/episodes_list_bloc.dart';

final GetIt getIt = GetIt.instance;

Future<void> setupLocator() async {
  /// RemoteDataSource
  getIt.registerSingleton<ApiRickAndMortyDataSource>(ApiRickAndMortyDataSource());

  ///Repository
  getIt.registerSingleton<ApiRickAndMortyRepository>(apiRickAndMortyRepositoryImpl(
    apiRickAndMortyDataSource: getIt.get<ApiRickAndMortyDataSource>(),
    ));
  
  ///UseCases
  getIt.registerFactory<GetCharacterListUseCase>(() => GetCharacterListUseCase(
    getIt.get<ApiRickAndMortyRepository>()));
  getIt.registerFactory<GetCharacterUseCase>(() => GetCharacterUseCase(
    getIt.get<ApiRickAndMortyRepository>()));
  getIt.registerFactory<GetLocationListUseCase>(() => GetLocationListUseCase(
    getIt.get<ApiRickAndMortyRepository>()));
  getIt.registerFactory<GetEpisodeListUseCase>(() => GetEpisodeListUseCase(
    getIt.get<ApiRickAndMortyRepository>()));
  
  /// Bloc
  getIt.registerFactory(() => GlobalAppBloc());
  getIt.registerFactory(() => NavBarBloc());
  getIt.registerFactory(() => CharacterListBloc());
  getIt.registerFactory(() => CharacterBloc());
  getIt.registerFactory(() => LocationsListBloc());
  getIt.registerFactory(() => EpisodesListBloc());

}
