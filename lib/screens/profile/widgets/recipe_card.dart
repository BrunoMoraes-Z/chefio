import 'package:chefio/constants.dart';
import 'package:flutter/material.dart';

class RecipeCard extends StatelessWidget {
  const RecipeCard({
    Key? key,
    required this.foodImage,
    required this.foodName,
    required this.minutes,
    required this.onTap,
  }) : super(key: key);

  final String foodImage;
  final String foodName;
  final int minutes;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      child: SizedBox(
        width: 160,
        height: 217,
        child: Column(
          children: [
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
      ),
    );
  }
}
