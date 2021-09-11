import 'package:chefio/constants.dart';
import 'package:flutter/material.dart';

class BottomNavItem extends StatelessWidget {
  const BottomNavItem({
    Key? key,
    required this.asset,
    required this.label,
    required this.onTap,
    this.isSelected = false,
  }) : super(key: key);

  final String asset;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              child: Image.asset(
                asset,
                color: isSelected ? primaryColor : secondaryTextColor,
              ),
            ),
            Text(
              label,
              style: TextStyle(
                color: isSelected ? primaryColor : secondaryTextColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
