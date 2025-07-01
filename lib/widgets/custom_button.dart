import 'package:click_click/utils/colors.dart';
import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ), // Space around button
      child: Center(
        child: SizedBox(
          width: double.infinity, // Make button expand within the padding
          child: ElevatedButton(
            onPressed: () {
              // Handle sign in
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: primaryBlue, // Blue background
              padding: const EdgeInsets.symmetric(
                vertical: 14,
              ), // Button height
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8), // Rounded corners
              ),
              elevation: 0, // No shadow
            ),
            child: const Text(
              'Sign in',
              style: TextStyle(color: pureWhite, fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
