import 'package:flutter/material.dart';
import 'package:plantapp/constants.dart';
import 'package:plantapp/views/home_view.dart';

void main() {
  runApp(const PlantApp());
}

class PlantApp extends StatelessWidget {
  const PlantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Palnt App",
        theme: ThemeData(
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: kPrimaryBackgroundColor,
        ),
        home: const HomeView());
  }
}
