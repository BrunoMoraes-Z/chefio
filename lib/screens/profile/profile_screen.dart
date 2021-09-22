import 'package:chefio/constants.dart';
import 'package:chefio/page_type.dart';
import 'package:chefio/screens/home/widgets/home_bottom.dart';
import 'package:chefio/screens/profile/widgets/person_card.dart';
import 'package:chefio/screens/profile/widgets/person_recipes.dart';
import 'package:chefio/screens/profile/widgets/profile_recipe_spacer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: formTextColor,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: const [
            PersonCard(
              personName: 'Choirul Syafril',
              personImage: 'assets/images/person_6.png',
              recipes: '32',
              following: '782',
              followers: '1.287',
            ),
            PersonRecipes(),
            ProfileRecipeSpacer(),
            HomeBottom(
              selected: PageType.profile,
            ),
          ],
        ),
      ),
    );
  }
}
