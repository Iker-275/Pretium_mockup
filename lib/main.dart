import 'package:flutter/material.dart';
import 'package:pretium_demo/routes/app_routes.dart';
import 'screens/landing_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Crypto Pay Africa',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        primaryColor: Colors.teal,
        fontFamily: 'Roboto',
      ),
      initialRoute: AppRoutes.landing,
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}
