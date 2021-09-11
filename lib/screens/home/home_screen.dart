import 'package:chefio/constants.dart';
import 'package:chefio/screens/home/widgets/home_head.dart';
import 'package:chefio/screens/home/widgets/home_bottom.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: formTextColor,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: const [
            HomeHead(),
            HomeBottom(),
          ],
        ),
      ),
    );
  }
}
