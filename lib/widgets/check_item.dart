import 'package:chefio/constants.dart';
import 'package:flutter/material.dart';

class CheckItem extends StatelessWidget {
  const CheckItem({
    Key? key,
    required this.text,
    this.checked = false,
  }) : super(key: key);

  final bool checked;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.5),
      child: Row(
        children: [
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: checked ? const Color(0xffE3FFF1) : outlineTextColor,
            ),
            child: Image.asset(
              'assets/icons/check.png',
              color: checked ? primaryColor : secondaryTextColor,
            ),
          ),
          const SizedBox(width: 8),
          Text(
            text,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: checked ? mainTextColor : secondaryTextColor,
            ),
          )
        ],
      ),
    );
  }
}
