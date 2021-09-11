import 'package:chefio/constants.dart';
import 'package:chefio/screens/home/widgets/bottom_nav_item.dart';
import 'package:flutter/material.dart';

class HomeBottom extends StatelessWidget {
  const HomeBottom({
    Key? key,
  }) : super(key: key);

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
                boxShadow: shadowList,
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
                          isSelected: true,
                          onTap: () {},
                        ),
                        BottomNavItem(
                          asset: 'assets/icons/edit.png',
                          label: 'Upload',
                          isSelected: false,
                          onTap: () {},
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
                          isSelected: false,
                          onTap: () {},
                        ),
                        BottomNavItem(
                          asset: 'assets/icons/profile.png',
                          label: 'Profile',
                          isSelected: false,
                          onTap: () {},
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
