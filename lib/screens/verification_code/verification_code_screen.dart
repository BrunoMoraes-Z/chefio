import 'package:chefio/constants.dart';
import 'package:chefio/screens/home/home_screen.dart';
import 'package:chefio/screens/verification_code/widgets/otp_input.dart';
import 'package:chefio/widgets/primary_button.dart';
import 'package:chefio/widgets/secondary_button.dart';
import 'package:flutter/material.dart';

class VerificationCodeScreen extends StatelessWidget {
  const VerificationCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(height: 100),
            const Text(
              'Check your email',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: mainTextColor,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'We.ve sent the code to your email',
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  OTPInput(first: true, last: false),
                  OTPInput(first: false, last: false),
                  OTPInput(first: false, last: false),
                  OTPInput(first: false, last: true),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('code expires in: '),
                Text(
                  '03:12',
                  style: TextStyle(
                    color: secondaryColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            PrimaryButton(
              text: 'Verify',
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                );
              },
            ),
            const SizedBox(height: 16),
            SecondaryButton(
              text: 'Send again',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
