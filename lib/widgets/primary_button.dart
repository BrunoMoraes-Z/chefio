import 'package:chefio/constants.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.onTap,
    this.text = '',
    this.buttonColor = primaryColor,
    this.style = const TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    this.child = const Text(''),
  }) : super(key: key);

  final VoidCallback onTap;
  final String? text;
  final TextStyle style;
  final Color buttonColor;
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
            color: buttonColor,
            borderRadius: BorderRadius.circular(32),
            boxShadow: shadowList,
          ),
          child: Center(
            child: text!.isNotEmpty ? Text(text!, style: style) : child,
          ),
        ),
      ),
    );
  }
}
