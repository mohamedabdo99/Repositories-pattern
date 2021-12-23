import 'package:repositorie_pattern/models/poke_model.dart';

abstract class InterfacePokeRepository{
  Future<List<PokeModel>>  getAllPokeMons();
}