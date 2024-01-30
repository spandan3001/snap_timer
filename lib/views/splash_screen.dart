// Import necessary packages
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

import 'home_screen.dart';

// Define a splash screen widget
class SplashScreen extends StatelessWidget {
  // Constructor for the SplashScreen widget
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Return an AnimatedSplashScreen widget with specified parameters
    return AnimatedSplashScreen(
      // Path to the splash screen image
      splash: 'images/logo.png',

      // Widget to navigate to after the splash screen
      nextScreen: const HomeScreen(),

      // Background color of the splash screen
      backgroundColor: Colors.white,

      // Type of splash transition effect
      splashTransition: SplashTransition.decoratedBoxTransition,
    );
  }
}
