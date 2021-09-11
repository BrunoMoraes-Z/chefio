import 'package:chefio/constants.dart';
import 'package:chefio/screens/sign_in/widgets/forgot_password.dart';
import 'package:chefio/screens/sign_in/widgets/login_fields.dart';
import 'package:chefio/screens/sign_up/sign_up_screen.dart';
import 'package:chefio/screens/verification_code/verification_code_screen.dart';
import 'package:chefio/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

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
                'Welcome Back!',
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
              const ForgotPassword(),
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
                text: 'Login',
              ),
              const SizedBox(height: 24),
              const Text('Or continue with'),
              const SizedBox(height: 24),
              PrimaryButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (c) => const VerificationCodeScreen(),
                    ),
                  );
                },
                buttonColor: secondaryColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      child: Image.asset(
                        'assets/icons/google.png',
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      'Google',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have any account?",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: mainTextColor,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      'Sign Up',
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
