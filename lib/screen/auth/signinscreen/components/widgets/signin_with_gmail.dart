import 'package:click_click/utils/colors.dart';
import 'package:click_click/widgets/custom_button.dart';
import 'package:click_click/widgets/custom_textfiels.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SigninWithGmailScreen extends StatefulWidget {
  const SigninWithGmailScreen({super.key});

  @override
  State<SigninWithGmailScreen> createState() => _SigninWithGmailScreenState();
}

class _SigninWithGmailScreenState extends State<SigninWithGmailScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context); // Access theme
    return Scaffold(
      // scaffoldBackgroundColor is set by AppTheme.lightTheme
      body: SingleChildScrollView(
        // Use SingleChildScrollView for scrollability
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w), // Responsive padding
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.center, // Center content horizontally
            children: [
              SizedBox(height: 200.h), // Top spacing
              Text(
                "Let's Sign in with Phone",
                style: theme.textTheme.headlineSmall, // Use themed text style
              ),
              SizedBox(height: 8.h),
              Text(
                "Welcome Back, you've been missed !",
                style: theme.textTheme.bodyLarge, // Use themed text style
              ),
              SizedBox(height: 40.h), // Spacing before text fields
              
              // Phone Number Text Field
              CustomTextFormField(
                hintText: 'Enter Phone Number', // Hint text
                keyboardType: TextInputType.phone,
                prefixIcon: const Icon(Icons.arrow_drop_down), // Dropdown icon
                obscureText: false, // Phone number is not obscured
              ),
              // Note: CustomTextFormField already adds SizedBox(height: 20.h) after itself.

              SizedBox(height: 30.h), // Spacing before sign in button
              // Sign in button
              const SignInButton(), // Custom button

              SizedBox(height: 20.h), // Spacing after sign in button
              // "Already have not an account?" and "Sing up !"
              Row(
                mainAxisAlignment: MainAxisAlignment.center, // Center the row content
                children: [
                  Text(
                    "Already have not an account?",
                    style: theme.textTheme.bodySmall, // Use themed text style
                  ),
                  SizedBox(width: 20.w),
                  TextButton(
                    onPressed: () {
                      // Handle navigation to sign up screen
                    },
                    child: Text(
                      'Sing up !',
                      style: TextStyle(
                        color: primaryBlue, // Blue color from theme
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h), // Bottom spacing
            ],
          ),
        ),
      ),
    );
  }
}