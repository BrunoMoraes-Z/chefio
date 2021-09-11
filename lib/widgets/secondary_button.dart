import 'package:chefio/constants.dart';
import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    Key? key,
    required this.onTap,
    this.text = '',
    this.style = const TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w700,
      color: secondaryTextColor,
    ),
    this.child = const Text(''),
  }) : super(key: key);

  final VoidCallback onTap;
  final String? text;
  final TextStyle style;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 56,
          width: double.infinity,
          decoration: BoxDecoration(
            // color: formTextColor,
            borderRadius: BorderRadius.circular(32),
            border: Border.all(color: secondaryTextColor),
          ),
          child: Center(
            child: text!.isNotEmpty ? Text(text!, style: style) : child,
          ),
        ),
      ),
    );
  }
}
