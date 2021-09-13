import 'package:chefio/constants.dart';
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
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
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
              const SizedBox(height: 60)
            ],
          ),
        ),
      ),
    );
  }
}

class FoodCard extends StatelessWidget {
  const FoodCard({
    Key? key,
    required this.personImage,
    required this.personName,
    required this.foodImage,
    required this.foodName,
    required this.minutes,
    required this.onTap,
  }) : super(key: key);

  final String personImage;
  final String personName;
  final String foodImage;
  final String foodName;
  final int minutes;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 264,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 31,
                height: 31,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  image: DecorationImage(
                    image: AssetImage(personImage),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Text(
                personName,
                style: const TextStyle(
                  fontSize: 15,
                  color: mainTextColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Stack(
            children: [
              Container(
                height: 151,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: AssetImage(foodImage),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    height: 32,
                    width: 32,
                    margin: const EdgeInsets.only(top: 16, right: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white70.withOpacity(0.30),
                    ),
                    child: Image.asset('assets/icons/heart.png'),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: Text(
              foodName,
              style: const TextStyle(
                fontSize: 17,
                color: mainTextColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const Text(
                'Food',
                style: TextStyle(
                  fontSize: 12,
                  color: secondaryTextColor,
                ),
              ),
              const SizedBox(width: 8),
              Image.asset(
                'assets/icons/dot.png',
                width: 5,
                height: 5,
                color: secondaryTextColor,
              ),
              const SizedBox(width: 8),
              Text(
                '>$minutes mins',
                style: const TextStyle(
                  fontSize: 12,
                  color: secondaryTextColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
