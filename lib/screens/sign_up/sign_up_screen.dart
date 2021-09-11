import 'package:chefio/constants.dart';
import 'package:chefio/screens/sign_in/widgets/login_fields.dart';
import 'package:chefio/screens/verification_code/verification_code_screen.dart';
import 'package:chefio/widgets/check_item.dart';
import 'package:chefio/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 100),
              const Text(
                'Welcome!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: mainTextColor,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Please enter your account here',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: secondaryTextColor,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              const LoginFields(),
              const SizedBox(height: 24),
              Container(
                margin: const EdgeInsets.only(left: 24),
                child: Row(
                  children: const [
                    Text(
                      'Your Password must contain:',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: mainTextColor,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: const [
                    CheckItem(
                      text: 'Atlest 6 characters',
                      checked: true,
                    ),
                    CheckItem(
                      text: 'Contains a number',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 72),
              PrimaryButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (c) => const VerificationCodeScreen(),
                    ),
                  );
                },
                text: 'Sign Up',
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Have an account?",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: mainTextColor,
                    ),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
