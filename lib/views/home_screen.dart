import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX App'),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: kBlue,
      ),
      body: const Placeholder(),
    );
  }
}
