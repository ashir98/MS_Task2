import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ms_task2/Screens/chat_screen.dart';
import 'package:ms_task2/Screens/package_screen.dart';
import 'package:ms_task2/Screens/pickupDate_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> screens =[PackageScreen(),PickupDateScreen(),ChatScreen()];
  int currentIndex=0;
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: IndexedStack(
          index: currentIndex,
          children: screens,
        ),
        bottomNavigationBar: NavigationBar(
          selectedIndex: currentIndex,
          onDestinationSelected: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.screenshot),
              label: "Screen 1",
            ),
            NavigationDestination(
              icon: Icon(Icons.screenshot),
              label: "Screen 2",
            ),
            NavigationDestination(
              icon: Icon(Icons.screenshot),
              label: "Screen 3",
            )
          ],
        ),
      ),
    );
  }
}