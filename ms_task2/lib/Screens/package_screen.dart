import 'package:flutter/material.dart';
import 'package:ms_task2/Widgets/package_card.dart';

class PackageScreen extends StatefulWidget {
  const PackageScreen({super.key});

  @override
  State<PackageScreen> createState() => _PackageScreenState();
}

class _PackageScreenState extends State<PackageScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back,color: Colors.blue,),
          actions: [
            
            Icon(Icons.menu_rounded, color: Colors.blue,),SizedBox(width: 10,),],
          centerTitle: true,
          backgroundColor: Colors.white,
          shadowColor: Colors.blue,
          surfaceTintColor: Colors.blue,
          title: const Text("Package", style: TextStyle(color: Colors.blue),),
        ),

        ///Body
        body: SingleChildScrollView(
          child: Column(
            children: [
              PackageCard(image: "images/1.png",),
              PackageCard(image: "images/2.png",),
              PackageCard(image: "images/3.png",),
              PackageCard(image: "images/4.png",),
              PackageCard(image: "images/1.png",),
              PackageCard(image: "images/2.png",),
              PackageCard(image: "images/3.png",),
              PackageCard(image: "images/4.png",),
        
            ],
          ),
        )
      ),
    );
  }
}