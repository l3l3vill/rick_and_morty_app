
import 'package:rick_and_morty_app/data/model/episode_model.dart';

import '../repositories/apiRickAndMortyRepository.dart';

class GetEpisodeListUseCase{
  final ApiRickAndMortyRepository apiRickAndMortyRepository;

  GetEpisodeListUseCase(this.apiRickAndMortyRepository);

  Future<EpisodeModelList> call() async{
    return await apiRickAndMortyRepository.getEpisodesListDataFromApi();
  }
}