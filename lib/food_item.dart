// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:menu_app_flutter/model/food.dart';

class FoodItem extends StatelessWidget {
  const FoodItem({
    Key? key,
    required this.food,
  }) : super(key: key);

  final Food food;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          food.imgPath,
          height: 120,
          width: 120,
        ),
        Container(
          padding: EdgeInsets.all(50),
          child: Text(food.name),
        )
      ],
    );
  }
}
