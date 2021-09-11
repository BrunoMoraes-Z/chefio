import 'package:chefio/constants.dart';
import 'package:flutter/material.dart';

class LoginFields extends StatelessWidget {
  const LoginFields({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          TextField(
            cursorColor: primaryColor,
            decoration: InputDecoration(
              hintText: 'Email or phone number',
              prefixIcon: Container(
                padding: const EdgeInsets.only(left: 10),
                child: Image.asset('assets/icons/mail_letter.png'),
              ),
              border: OutlineInputBorder(
                borderSide: const BorderSide(color: secondaryTextColor),
                borderRadius: BorderRadius.circular(32),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: primaryColor),
                borderRadius: BorderRadius.circular(32),
              ),
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            cursorColor: primaryColor,
            decoration: InputDecoration(
              hintText: 'Password',
              prefixIcon: Container(
                padding: const EdgeInsets.only(left: 15, right: 8),
                child: Image.asset('assets/icons/lock.png'),
              ),
              border: OutlineInputBorder(
                borderSide: const BorderSide(color: secondaryTextColor),
                borderRadius: BorderRadius.circular(32),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: primaryColor),
                borderRadius: BorderRadius.circular(32),
              ),
              suffixIcon: GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.only(right: 10),
                  child: Image.asset('assets/icons/eye_open.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
