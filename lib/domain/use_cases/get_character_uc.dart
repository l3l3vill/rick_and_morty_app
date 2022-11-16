import '../../data/model/character_model.dart';
import '../repositories/apiRickAndMortyRepository.dart';

class GetCharacterUseCase {
  final ApiRickAndMortyRepository apiRickAndMortyRepository ;

  GetCharacterUseCase(this.apiRickAndMortyRepository );  

  Future<CharacterModel> call(int characterId) async {
    return await apiRickAndMortyRepository.gethCaracterDataFromApi(characterId);
  }
}