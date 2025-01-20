import 'package:flutter/material.dart';
import 'package:flutter_app_write_trial_task/screens/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String homeRoute =
      '/home'; // Define a constant for the route, we can make a seperate routes if needed
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Appwrite Demo',
      initialRoute: homeRoute, // Set the initial route
      routes: {
        homeRoute: (context) => const HomeScreen(), // Define the home route
      },
    );
  }
}
