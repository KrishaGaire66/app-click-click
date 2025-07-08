import 'package:click_click/export.dart';
import 'package:click_click/routes/routes.dart';
import 'package:click_click/widgets/shared_title.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar(
        title: 'Home',
        leading: Icon(Icons.menu),
        actions: [Icon(Icons.notifications)],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: Column(
            children: [
              // Row(
              //   children: [
              //     Text('Features Events', style: TextStyle(fontSize: 18)),
              //     Spacer(),
              //     TextButton(
              //       onPressed: () {},
              //       style: TextButton.styleFrom(
              //         foregroundColor: Colors.blue, // Text color
              //         // Button background
              //         padding: EdgeInsets.symmetric(
              //           horizontal: 16,
              //           vertical: 8,
              //         ),
              //       ),
              //       child: Text('View All +', style: TextStyle(fontSize: 14)),
              //     ),
              //   ],
              // ),
              SharedTitle(title: "Features Events", actionText: "View All +"),
              SharedLargeCard(
                title: "Event",
                date: "Dec ",
                location: "Location",
                month: "30",
                onTap: () {
                  Navigator.pushNamed(context, Routes.eventDetails);
                },
              ),
              SharedTitle(title: "Other Events", actionText: "View All +"),
              SmallShareCard(
                eventName: "New Year Explore Event",
                location: "Town Hall New York",
                dateTime: "Sat,Dec 2020, at 12:00 PM",
                onTap: () {
                  Navigator.pushNamed(context, Routes.eventDetails);
                },
              ),
              SizedBox(height: 8),
              SmallShareCard(
                eventName: "New Year Explore Event",
                location: "Town Hall New York",
                dateTime: "Sat,Dec 2020, at 12:00 PM",
                onTap: () {
                  Navigator.pushNamed(context, Routes.eventDetails);
                },
              ),

              SharedTitle(title: "Events You Join"),

              SmallShareCard(
                eventName: "New Year Explore Event",
                location: "Town Hall New York",
                dateTime: "Sat,Dec 2020, at 12:00 PM",
                onTap: () {
                  Navigator.pushNamed(context, Routes.eventDetails);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
