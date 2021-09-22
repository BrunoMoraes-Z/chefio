import 'package:chefio/constants.dart';
import 'package:chefio/screens/profile/widgets/person_detail_tile.dart';
import 'package:flutter/material.dart';

class PersonCard extends StatelessWidget {
  const PersonCard({
    Key? key,
    required this.personName,
    required this.personImage,
    required this.recipes,
    required this.following,
    required this.followers,
  }) : super(key: key);

  final String personName;
  final String personImage;
  final String recipes;
  final String following;
  final String followers;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: double.infinity,
        height: 350,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 56, right: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      'assets/icons/share.png',
                      height: 24,
                      width: 24,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 100,
              height: 100,
              margin: const EdgeInsets.only(top: 44),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                  image: AssetImage(personImage),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 24),
              child: Text(
                personName,
                style: const TextStyle(
                  color: mainTextColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  PersonDetailTile(
                    value: recipes,
                    text: 'Recipes',
                  ),
                  PersonDetailTile(
                    value: following,
                    text: 'Following',
                  ),
                  PersonDetailTile(
                    value: followers,
                    text: 'Followers',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
