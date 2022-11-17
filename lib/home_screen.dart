import 'package:flutter/material.dart';
import 'package:menu_app_flutter/food_item.dart';
import 'package:menu_app_flutter/model/food.dart';

class HomeSceen extends StatelessWidget {
  HomeSceen({super.key});

  var foods = [
    Food(name: 'Burger', imgPath: 'assets/burger.png'),
    Food(name: 'Pasta', imgPath: 'assets/pasta.png'),
    Food(name: 'Pizza', imgPath: 'assets/pizza.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Menu App',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: ListView.builder(
        itemCount: foods.length,
        itemBuilder: (context, index) {
          return FoodItem(food: foods[index]);
        },
      ),
    );
  }
}
