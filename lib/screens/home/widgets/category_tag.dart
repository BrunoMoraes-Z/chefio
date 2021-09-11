import 'package:chefio/constants.dart';
import 'package:flutter/material.dart';

class CategoryTag extends StatelessWidget {
  const CategoryTag({
    Key? key,
    required this.text,
    this.isSelected = false,
    required this.onTap,
  }) : super(key: key);

  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        color: isSelected ? primaryColor : formTextColor,
        borderRadius: BorderRadius.circular(32),
      ),
      margin: const EdgeInsets.only(right: 16),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(32),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: isSelected ? Colors.white : outlineTextColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
