import 'package:click_click/export.dart';
import 'package:click_click/routes/routes.dart';
import 'package:click_click/screen/create_event_screen/dart/components/create_event_screen.dart';
import 'package:click_click/screen/create_event_screen/dart/components/widgets/event_type_selector.dart';
import 'package:click_click/screen/event_details/components/event_details_screen.dart';
import 'package:click_click/widgets/shared_dropdown.dart';

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
          home:
              //  EventDetail(
              //   eventName: "ICT Explore Event 2021",
              //   time: "Mon, 20 Decembr, 2021",
              //   location: "Town Hall London",
              //   date: "Mon z, 20 Decembr, 2021",
              //   description: "Lorem ipsum, or lipsum as it is sometimes",
              // ),
           Scaffold(

        body: const Center(
        child:
        //SharedDropdown(),
        //EventTypeSelector(),
          CreateEventScreen(),
        ),
        ),

        // initialRoute: Routes.home,
          // onGenerateRoute: Routes.onGenerateRouted,
        );
      },
    );
  }
}
