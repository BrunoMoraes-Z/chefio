import 'package:chefio/constants.dart';
import 'package:chefio/screens/reset_password/reset_password_screen.dart';
import 'package:chefio/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: 150),
              const Text(
                'Password recovery',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: mainTextColor,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Please enter your email to recover your password',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: secondaryTextColor,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 24),
                child: TextField(
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
              ),
              const SizedBox(height: 32),
              PrimaryButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (c) => const ResetPasswordScreen(),
                    ),
                  );
                },
                text: 'Sign In',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
