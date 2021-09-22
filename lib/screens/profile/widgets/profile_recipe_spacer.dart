import 'package:chefio/constants.dart';
import 'package:flutter/material.dart';

class ProfileRecipeSpacer extends StatelessWidget {
  const ProfileRecipeSpacer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      height: 55,
      margin: const EdgeInsets.only(top: 360),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            width: 2.5,
            color: primaryColor,
          ),
        ),
      ),
      child: const Text(
        'Recipes',
        style: TextStyle(
          fontSize: 17,
          color: mainTextColor,
        ),
      ),
    );
  }
}
