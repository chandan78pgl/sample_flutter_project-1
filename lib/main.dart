import 'package:flutter/material.dart';
import 'package:sample_project/route.dart';
import 'package:sample_project/utils/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample Doc',
      debugShowCheckedModeBanner: false,
      initialRoute: LandingScreenRoute,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
