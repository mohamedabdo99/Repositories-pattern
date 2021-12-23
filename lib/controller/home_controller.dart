import 'package:dio/dio.dart';
import 'package:repositorie_pattern/models/poke_model.dart';
import 'package:repositorie_pattern/repositories/pok_repository_interface.dart';
import 'package:repositorie_pattern/repositories/poke_repository.dart';
//This is a simple class that receive the
// repository that we build and intance of Dio.
// Realize that we are get the repository using the type
// “InterfacePokeRepository” and only after we
// instantiate the concrete class “PokeRepository”.
// With this we can instantiate whatever class that have a
// implementation of the “InterfacePokeRepository”
class HomeController{
  final InterfacePokeRepository _interfacePokeRepository
         =  PokeRepository(Dio());

  // this method return  method that we create in the our “PokeRepository”.
  Future<List<PokeModel>> fetchPokeMonsData(){
    return _interfacePokeRepository.getAllPokeMons();
  }
}