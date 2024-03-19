import 'dart:async';
import 'package:flutter/material.dart';
import 'package:onkar_project/screens/onboarding_screen.dart';

void main() {
  runApp(SalonApp());
}

class SalonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Salon App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: OnboardingScreen(),
    );
  }
}



