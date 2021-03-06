import 'package:chefio/screens/home/widgets/food_card.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      margin: const EdgeInsets.only(top: 262),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Align(
        alignment: Alignment.topLeft,
        child: SingleChildScrollView(
          child: Wrap(
            direction: Axis.horizontal,
            spacing: 24,
            children: [
              FoodCard(
                personImage: 'assets/images/person_1.png',
                personName: 'Calum Lewis',
                foodImage: 'assets/images/pancake.png',
                foodName: 'Pancake',
                minutes: 60,
                onTap: () {},
              ),
              FoodCard(
                personImage: 'assets/images/person_2.png',
                personName: 'Ellif Sonas',
                foodImage: 'assets/images/salad.png',
                foodName: 'Salad',
                minutes: 60,
                onTap: () {},
              ),
              FoodCard(
                personImage: 'assets/images/person_3.png',
                personName: 'Elena Shelby',
                foodImage: 'assets/images/pancake_2.png',
                foodName: 'Pancake',
                minutes: 60,
                onTap: () {},
              ),
              FoodCard(
                personImage: 'assets/images/person_4.png',
                personName: 'John Priyadi',
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
