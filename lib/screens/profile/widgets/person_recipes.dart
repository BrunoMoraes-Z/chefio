import 'package:chefio/screens/profile/widgets/recipe_card.dart';
import 'package:flutter/material.dart';

class PersonRecipes extends StatelessWidget {
  const PersonRecipes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      // margin: const EdgeInsets.only(top: 360),
      margin: const EdgeInsets.only(top: 420),
      padding: const EdgeInsets.only(right: 24, left: 24, bottom: 24, top: 10),
      child: Align(
        alignment: Alignment.topLeft,
        child: SingleChildScrollView(
          child: Wrap(
            direction: Axis.horizontal,
            spacing: 24,
            children: [
              RecipeCard(
                foodImage: 'assets/images/pancake.png',
                foodName: 'Pancake',
                minutes: 60,
                onTap: () {},
              ),
              RecipeCard(
                foodImage: 'assets/images/salad.png',
                foodName: 'Salad',
                minutes: 60,
                onTap: () {},
              ),
              RecipeCard(
                foodImage: 'assets/images/pancake_2.png',
                foodName: 'Pancake',
                minutes: 60,
                onTap: () {},
              ),
              RecipeCard(
                foodImage: 'assets/images/salad_2.png',
                foodName: 'Salad',
                minutes: 60,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
