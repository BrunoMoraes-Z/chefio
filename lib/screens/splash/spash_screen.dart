import 'dart:ui';

import 'package:chefio/constants.dart';
import 'package:chefio/screens/sign_in/sign_in_screen.dart';
import 'package:chefio/widgets/primary_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset(
              'assets/images/onboarding.png',
              fit: BoxFit.fitWidth,
            ),
          ),
          const Text(
            'Start Cooking',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: mainTextColor,
            ),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 83),
            child: const Text(
              "Let's our community to cook better food!",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: secondaryTextColor,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 72),
          PrimaryButton(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignInScreen(),
                ),
              );
            },
            text: 'Get Started',
          ),
        ],
      ),
    );
  }
}
