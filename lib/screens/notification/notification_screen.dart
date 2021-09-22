import 'package:chefio/constants.dart';
import 'package:chefio/page_type.dart';
import 'package:chefio/screens/home/widgets/home_bottom.dart';
import 'package:chefio/screens/notification/widgets/notification_line.dart';
import 'package:chefio/screens/notification/widgets/notification_section.dart';
import 'package:chefio/widgets/primary_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 56, right: 16, left: 16),
              child: SizedBox(
                height: MediaQuery.of(context).size.height - 196,
                child: SingleChildScrollView(
                  child: Column(
                    children: const [
                      NotificationSection(
                        title: 'New',
                        children: [
                          NotificationLine(
                            personName: 'Dean Winchester',
                            personImage: 'assets/images/person_5.png',
                            time: 0.30,
                          ),
                        ],
                      ),
                      NotificationSection(
                        title: 'Today',
                        children: [
                          NotificationLine(
                            personName: 'Dean Winchester',
                            personImage: 'assets/images/person_5.png',
                            time: 0.30,
                            following: true,
                          ),
                          NotificationLine(
                            personName: 'Sam Winchester',
                            personImage: 'assets/images/person_7.png',
                            time: 1.25,
                            like: true,
                            recipeImage: 'assets/images/pancake.png',
                          ),
                        ],
                      ),
                      NotificationSection(
                        title: 'Yesterday',
                        children: [
                          NotificationLine(
                            personName: 'Sam Winchester',
                            personImage: 'assets/images/person_7.png',
                            time: 30,
                            following: true,
                          ),
                          NotificationLine(
                            personName: 'Dean Winchester',
                            personImage: 'assets/images/person_5.png',
                            time: 30,
                            like: true,
                            recipeImage: 'assets/images/salad_2.png',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 140,
              child: HomeBottom(
                selected: PageType.notification,
                elevated: false,
              ),
            )
          ],
        ),
      ),
    );
  }
}
