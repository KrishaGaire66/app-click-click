import 'dart:developer';
import 'package:click_click/screen/event_details/components/event_details_screen.dart';
import 'package:click_click/screen/home_screen/components/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Routes {
  Routes._();

  // Route names
  static const String login = '/login';
  static const String home = '/home';
  static const String eventDetails = '/eventsdetails';

  // Track routes (optional)
  static String previousCustomerRoute = home;
  static String currentRoute = home;

  // Use this in MaterialApp > onGenerateRoute
  static Route<dynamic>? onGenerateRouted(RouteSettings settings) {
    previousCustomerRoute = currentRoute;
    currentRoute = settings.name ?? '';
    log('CURRENT ROUTE: $currentRoute');

    // Optional deep link protection
    if (settings.name != null && settings.name!.contains('/link?')) {
      return null;
    }

    switch (settings.name) {
      case home:
        return CupertinoPageRoute(builder: (_) => const HomeScreen());

      case eventDetails:
        return CupertinoPageRoute(builder: (_) => const EventDetailsScreen());

      case login:
        // return CupertinoPageRoute(builder: (_) => const LoginScreen());
        return _undefined(); // Update with actual screen

      default:
        return _undefined();
    }
  }

  // Fallback route
  static Route<dynamic> _undefined() {
    return MaterialPageRoute(
      builder: (_) => const Scaffold(
        body: Center(child: Text('No route defined')),
      ),
    );
  }
}
