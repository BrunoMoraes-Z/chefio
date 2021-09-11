import 'package:chefio/constants.dart';
import 'package:flutter/material.dart';

class OTPInput extends StatelessWidget {
  const OTPInput({
    Key? key,
    required this.first,
    required this.last,
  }) : super(key: key);

  final bool first, last;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72,
      width: 72,
      child: TextField(
        autofocus: first,
        onChanged: (value) {
          if (value.isNotEmpty && last == false) {
            FocusScope.of(context).nextFocus();
          }
          if (value.isEmpty && first == false) {
            FocusScope.of(context).previousFocus();
          }
          if (last && value.isNotEmpty) {
            FocusScope.of(context).unfocus();
          }
        },
        showCursor: false,
        readOnly: false,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 34,
          fontWeight: FontWeight.bold,
        ),
        keyboardType: TextInputType.number,
        maxLength: 1,
        cursorColor: primaryColor,
        decoration: InputDecoration(
          hintText: '-',
          counter: const Offstage(),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 2, color: outlineTextColor),
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 2, color: primaryColor),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
