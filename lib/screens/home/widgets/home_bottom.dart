import 'package:chefio/constants.dart';
import 'package:chefio/page_type.dart';
import 'package:chefio/screens/home/home_screen.dart';
import 'package:chefio/screens/home/widgets/bottom_nav_item.dart';
import 'package:chefio/screens/notification/notification_screen.dart';
import 'package:chefio/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';

class HomeBottom extends StatelessWidget {
  const HomeBottom({
    Key? key,
    this.selected = PageType.home,
    this.elevated = true,
  }) : super(key: key);

  final PageType selected;
  final bool elevated;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 95,
              decoration: BoxDecoration(
                boxShadow: elevated ? shadowList : [],
                color: Colors.white,
              ),
              padding: const EdgeInsets.only(
                top: 11,
                bottom: 37,
                left: 27,
                right: 27,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BottomNavItem(
                          asset: 'assets/icons/home.png',
                          label: 'Home',
                          isSelected: selected == PageType.home,
                          onTap: () {
                            if (selected != PageType.home) {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HomeScreen(),
                                ),
                              );
                            }
                          },
                        ),
                        BottomNavItem(
                          asset: 'assets/icons/edit.png',
                          label: 'Upload',
                          isSelected: selected == PageType.upload,
                          onTap: () {
                            if (selected == PageType.upload) return;
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 75,
                    height: double.infinity,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Scan',
                        style: TextStyle(
                          color: secondaryTextColor,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BottomNavItem(
                          asset: 'assets/icons/notification.png',
                          label: 'Notification',
                          isSelected: selected == PageType.notification,
                          onTap: () {
                            if (selected == PageType.notification) return;
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const NotificationScreen(),
                              ),
                            );
                          },
                        ),
                        BottomNavItem(
                          asset: 'assets/icons/profile.png',
                          label: 'Profile',
                          isSelected: selected == PageType.profile,
                          onTap: () {
                            if (selected == PageType.profile) return;
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ProfileScreen(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 56,
              width: 56,
              margin: const EdgeInsets.only(bottom: 60),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(50),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(50),
                onTap: () {},
                child: Image.asset('assets/icons/scan.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
