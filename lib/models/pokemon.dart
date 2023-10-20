import 'package:pokedex/utils/constants.dart';

class Pokemon {
  final String name;
  final String url;

  get id => int.parse(url.split('/').reversed.skip(1).first);
  get image => '$pokemonImgUrl/$id.png';

  Pokemon({required this.name, required this.url});

  factory Pokemon.fromJson(Map<String, dynamic> jsonData) {
    return Pokemon(name: jsonData['name'], url: jsonData['url']);
  }
}
