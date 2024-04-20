import '/src/config/index.dart';

class CharacterProvider with ChangeNotifier {
  List<CharacterModel> characters = [];
  CharacterService characterService = CharacterService();

  CharacterProvider() {
    fetchCharacters();
  }

  fetchCharacters() async {
    characters = await characterService.getCharacters();
    notifyListeners();
  }
}
