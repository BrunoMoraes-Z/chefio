import 'package:chefio/constants.dart';
import 'package:chefio/screens/forgot_password/forgot_password_screen.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ForgotPasswordScreen(),
                ),
              );
            },
            child: const Text(
              'Forgot password ?',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: mainTextColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
