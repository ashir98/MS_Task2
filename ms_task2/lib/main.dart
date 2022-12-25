import 'package:flutter/material.dart';
import 'package:ms_task2/Screens/chat_screen.dart';
import 'package:ms_task2/Screens/home.dart';
import 'package:ms_task2/Screens/package_screen.dart';
import 'package:ms_task2/Screens/pickupDate_screen.dart';

void main() {
  runApp(const MSTask2());
}

class MSTask2 extends StatelessWidget {
  const MSTask2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}