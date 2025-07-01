import 'package:click_click/screen/auth/signinscreen/components/signin_screen.dart';
import 'package:click_click/screen/auth/signinscreen/components/widgets/signin_with_gmail.dart';
import 'package:click_click/themes/app_theme.dart';
import 'package:click_click/widgets/custom_textfiels.dart';
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
      designSize: const Size(375, 812), // Adjust based on your UI design
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home:SigninWithGmailScreen(),
          theme: AppTheme.lightTheme,
        );
      },
    );
  }
}

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
      
//       body: Column(
//         children: [
//           SizedBox(height: 20.h),
//           Center(
            
//             child: Padding(
              
//               padding: EdgeInsets.symmetric(horizontal: 24.w), // Responsive padding
//               child: const CustomTextFormField(
//                 labelText: "",
//                 hintText: 'Email',
//                 obscureText: false,
//                 keyboardType: TextInputType.emailAddress,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
