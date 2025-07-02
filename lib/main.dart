import 'package:click_click/screen/auth/signinscreen/components/signin_screen.dart';
import 'package:click_click/screen/auth/signinscreen/components/widgets/signin_with_gmail.dart';
import 'package:click_click/themes/app_theme.dart';
import 'package:click_click/widgets/custom_textfiels.dart';
import 'package:click_click/widgets/event_image_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const ClickClick());
}

class ClickClick extends StatelessWidget {
  const ClickClick({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          home: const HomeScreen(), // 🔁 using a home screen now
        );
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100], // Optional background
      body: Center(
        child: EventCard(), //  Centered Event Card
      ),
    );
  }
}
