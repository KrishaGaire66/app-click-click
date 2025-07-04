
import 'package:click_click/export.dart';
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

