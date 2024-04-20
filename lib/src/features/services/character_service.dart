import '/src/config/index.dart';
import 'package:http/http.dart' as http;

class CharacterService {
  static const String url = 'https://hp-api.onrender.com/api/characters';

  Future<List<CharacterModel>> getCharacters() async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((item) => CharacterModel.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load characters');
    }
  }
}
