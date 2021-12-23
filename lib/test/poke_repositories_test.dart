// import 'package:mockito/mockito.dart';
// import 'package:repositorie_pattern/models/poke_model.dart';
// import 'package:repositorie_pattern/repositories/pok_repository_interface.dart';
//
// class MockPokeRepository extends Mock implements InterfacePokeRepository{}
//
// main(){
//   MockPokeRepository mockPokeRepository;
//
//   setUp((){
//     mockPokeRepository = MockPokeRepository();
//   });
//   test("when called a function getAllPokeMons should be return list of PokeMons") ,
//   () async {
//     when(mockPokeRepository.getAllPokeMons()).thenAnswer((_)=> Future.value(
//       [
//           PokeModel("Pikachu"),
//           PokeModel("Charmander"),
//           PokeModel("Ditto"),
//
//       ],
//       ));
//     var pokeMons = await mockPokeRepository.getAllPokeMons();
//     expect();
//   };
// }

