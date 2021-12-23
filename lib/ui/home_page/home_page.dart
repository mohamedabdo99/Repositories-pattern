import 'package:flutter/material.dart';
import 'package:repositorie_pattern/controller/home_controller.dart';
import 'package:repositorie_pattern/models/poke_model.dart';

class HomePage extends StatelessWidget {
  final HomeController _homeController = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PokeMons Name'),
      ),
      body: FutureBuilder<List<PokeModel>>(
        future: _homeController.fetchPokeMonsData(),
        builder: (context, snapshots) {
          var pokeMons = snapshots.data;
          print( pokeMons);
          if (pokeMons == null) {
            return Center(child: const CircularProgressIndicator());
          }
          return ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: pokeMons.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  '${pokeMons[index].name}',
                  style: const TextStyle(
                    fontSize: 18.0,
                    color: Colors.black87,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
