import 'package:chefio/constants.dart';
import 'package:flutter/material.dart';

class PersonDetailTile extends StatelessWidget {
  const PersonDetailTile({
    Key? key,
    required this.value,
    required this.text,
  }) : super(key: key);

  final String value, text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            color: mainTextColor,
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          text,
          style: const TextStyle(
            color: secondaryTextColor,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
