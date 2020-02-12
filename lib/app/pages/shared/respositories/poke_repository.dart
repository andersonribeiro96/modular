import 'package:dio/dio.dart';
import 'package:loginmobx/app/pages/shared/models/pokemo_model.dart';

class PokeRepository {
  final Dio dio;

  PokeRepository(this.dio);

  Future<List<PokemonModel>> getAllPokemons() async {
    var response = await dio.get('/pokemon');
    List<PokemonModel> list = [];
    for (var item in (response.data['results'] as List)) {
      PokemonModel model = PokemonModel(name: item['name']);
      list.add(model);
    }

    return list;
  }
}
