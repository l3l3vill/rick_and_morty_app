import '../../data/model/character_model.dart';
import '../repositories/apiRickAndMortyRepository.dart';

class GetCharacterListUseCase {
  final ApiRickAndMortyRepository apiRickAndMortyRepository ;

  GetCharacterListUseCase(this.apiRickAndMortyRepository );  

  Future<CharacterModelList> call() async {
    return await apiRickAndMortyRepository.getcharactersListDataFromApi();
  }
}


