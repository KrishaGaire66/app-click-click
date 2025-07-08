import 'package:click_click/export.dart';
import 'package:click_click/routes/routes.dart';
import 'package:click_click/screen/event_details/components/widgets/event_details.dart';

class EventDetailsScreen extends StatefulWidget {
  const EventDetailsScreen({super.key});

  @override
  State<EventDetailsScreen> createState() => _EventDetailsScreenState();
}

class _EventDetailsScreenState extends State<EventDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar(
        title: 'Home',
        leading: Icon(Icons.arrow_back),
        actions: [
          Icon(Icons.search),
          SizedBox(width: 10),
          Icon(Icons.notifications),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 10),
          child: Stack(
            clipBehavior: Clip.none, // Allows overflow for overlapping
            children: [
              // Background container (pushed down to make room for EventCard)
              Container(
                margin: EdgeInsets.only(
                  top: 135.h,
                ), // Push it down so EventCard can overlap
                decoration: BoxDecoration(
                  color: pureWhite,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 100.h,
                  ), // Padding to avoid overlap inside
                  child: EventDetail(
                    eventName: "ICT Explore Event 2021",
                    time: "Mon, 20 Decembr, 2021",
                    location: "Town Hall London",
                    date: "Mon z, 20 Decembr, 2021",
                    description:
                        "Lorem ipsum, or lipsum as it is sometime ipsum, or lipsum as it is sometimesLorem ipsum, or lipsum as it is sometimesLorem ipsum, or lipsum as it is sometimesLorem ipsum, or lipsum as it is sometimesLorem ipsum, or lipsum as it is sometim",
                  ),
                ),
              ),

              // Overlapping EventCard
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: SharedLargeCard(
                  title: "Event",
                  date: "Dec ",
                  location: "Location",
                  month: "30",
                  imageUrl:
                      "https://imgs.search.brave.com/EDkP6atQKIIHQRmPus6l6VAkvqIL3BttOOTEuJNyDmA/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9zdGF0/aWMudmVjdGVlenku/Y29tL3N5c3RlbS9y/ZXNvdXJjZXMvdGh1/bWJuYWlscy8wMjUv/MTY3LzE5Mi9zbWFs/bC9sYW5kc2NhcGUt/b2Ytdm9sY2FuaWMt/bW91bnRhaW4taGls/bC13aXRoLW1vc3Mt/Y292ZXJlZC1pbi10/aGUtc3Vuc2V0LW9u/LWljZWxhbmRpYy1o/aWdobGFuZHMtaW4t/c3VtbWVyLWF0LWlj/ZWxhbmQtcGhvdG8u/anBn",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
