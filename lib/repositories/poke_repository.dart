import 'package:dio/dio.dart';
import 'package:repositorie_pattern/models/poke_model.dart';
import 'package:repositorie_pattern/repositories/pok_repository_interface.dart';

class PokeRepository  implements InterfacePokeRepository{
  final Dio _dio;

  PokeRepository(this._dio);

  @override
  Future<List<PokeModel>> getAllPokeMons() async {
    List<PokeModel> pokeMons =[];

    var response  = await _dio.get("https://pokeapi.co/api/v2/pokemon");

    response.data['results'].map((pokemon){
      pokeMons.add(PokeModel.fromJson(pokemon));
    }).toList();
    return pokeMons;

  }

}