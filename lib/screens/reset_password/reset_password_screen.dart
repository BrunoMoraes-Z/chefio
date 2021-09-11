import 'package:chefio/constants.dart';
import 'package:chefio/screens/sign_in/sign_in_screen.dart';
import 'package:chefio/screens/sign_in/widgets/login_fields.dart';
import 'package:chefio/widgets/check_item.dart';
import 'package:chefio/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

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
                'Reset your password',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: mainTextColor,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Please enter your new password',
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
              ),
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
                  Navigator.pop(context);
                  Navigator.pop(context);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignInScreen(),
                    ),
                  );
                },
                text: 'Done',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
