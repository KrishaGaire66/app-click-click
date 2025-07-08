import 'package:click_click/utils/colors.dart';
import 'package:click_click/widgets/shared_button.dart';
import 'package:click_click/widgets/shared_textfiels.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context); // Access theme
    return Scaffold(
      // scaffoldBackgroundColor is set by AppTheme.lightTheme
      body: SingleChildScrollView(
        // Use SingleChildScrollView for scrollability
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w), // Responsive padding
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.center, // Center content horizontally
            children: [
              SizedBox(height: 200.h), // Top spacing
              Text(
                "Let's Sign in with Google",
                style: theme.textTheme.headlineSmall, // Use themed text style
              ),
              SizedBox(height: 8.h),
              Text(
                "Welcome Back, you've been missed !",
                style: theme.textTheme.bodyLarge, // Use themed text style
              ),
              SizedBox(height: 40.h), // Spacing before text fields
              // Email Text Field
              const SharedTextField(
                hintText: 'johndoe@mail.com', // Hint text
                keyboardType: TextInputType.emailAddress,
                prefixIcon: Icon(Icons.mail, color: primaryBlue), // Mail icon
              ),
              // No need for SizedBox(height: 20.h) here because CustomTextFormField already adds it internally.

              // Password Text Field
              const SharedTextField(
                hintText: '***********', // Hint text
                obscureText: true, // This enables the visibility toggle
                keyboardType: TextInputType.text,
                prefixIcon: Icon(Icons.lock, color: primaryBlue), // Lock icon
              ),

              // Remember me & Forget password?
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 8.w,
                ), // Adjust padding for checkbox row
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 24.w, // Ensure checkbox has consistent size
                          height: 24.h,
                          child: Checkbox(
                            value: _rememberMe,
                            onChanged: (bool? newValue) {
                              setState(() {
                                _rememberMe = newValue ?? false;
                              });
                            },
                            activeColor: primaryBlue,
                            // Theming for checkbox is handled in AppTheme
                          ),
                        ),
                        SizedBox(width: 8.w),
                        Text(
                          'Remember me',
                          style: theme
                              .textTheme
                              .bodyMedium, // Use themed text style
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        // Handle forget password
                      },
                      child: Text(
                        'Forget password ?',
                        style: TextStyle(
                          color: primaryBlue, // Blue color from theme
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.h), // Spacing before sign in button
              // Sign in button
              const Shared_Button(), // Custom button

              SizedBox(height: 20.h), // Spacing after sign in button
              // "Already have not an account?"
              Text(
                "Already have not an account?",
                style: theme.textTheme.bodySmall, // Use themed text style
              ),
              SizedBox(height: 20.h), // Bottom spacing
            ],
          ),
        ),
      ),
    );
  }
}
