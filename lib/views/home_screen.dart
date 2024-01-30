// Import necessary packages and files
import 'package:flutter/material.dart';
import '../constants/colors.dart'; // For color constants
import '../utils/compnents/result_display_card.dart'; // For DisplayCard widget

// Define the main page widget
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

// Define the state for the main page widget
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // Return a scaffold with an app bar and body
    return Scaffold(
      appBar: AppBar(
        // App bar title and styling
        title: const Text('GetX App'),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: kBlue,
      ),

      // Body of the scaffold with a DisplayCard widget
      body: const DisplayCard(
        mainColor: kYellow,
        borderColor: kYellowBorder,
        title: 'hello',
        text: 'test',
        borderRadius: 5.0,
      ),
    );
  }
}
