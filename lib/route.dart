import 'package:flutter/material.dart';
import 'package:sample_project/screens/appointment_list_screen.dart';
import 'package:sample_project/screens/home_screen.dart';
import 'package:sample_project/screens/landing_screen.dart';
import 'package:sample_project/screens/undefined_screen.dart';
import 'package:sample_project/utils/constants.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    //final arguments = settings.arguments;

    switch (settings.name) {
      case AppointmentListScreenRoute:
        return MaterialPageRoute(builder: (_) => AppointmentListScreen());
      case HomeScreenRoute:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case LandingScreenRoute:
        return MaterialPageRoute(builder: (_) => LandingScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => UndefinedScreen(name: settings.name));
    }
  }
}
