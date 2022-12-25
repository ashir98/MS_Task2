import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ms_task2/Widgets/calender_card.dart';
import 'package:group_button/group_button.dart';
import 'package:getwidget/getwidget.dart';



class PickupDateScreen extends StatefulWidget {
  const PickupDateScreen({super.key});

  @override
  State<PickupDateScreen> createState() => _PickupDateScreenState();
}

class _PickupDateScreenState extends State<PickupDateScreen> {

  
  @override
  Widget build(BuildContext context) {

    bool isSwitched = true;

    List<String> timings = ["Everyday","Every Week", "Every Month"];
    List<int> val = [1,2,3,4,5,];
    var initTime = "Everyday";
    



    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
   
   
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
          title: const Text("Pickup Date", style: TextStyle(color: Colors.blue),),
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:  EdgeInsets.only(left: 10, right: 10, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("When would you like your pickup?",style: TextStyle(fontSize: width*0.05, fontStyle: FontStyle.italic, color: Colors.black54),),
                    Icon(Icons.calendar_month_rounded, color: Colors.blue,)
                  ],
                ),
              ),
        
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalenderCard(weekDay: "Fri", color: Colors.grey, date: "25 june", day: "Yesterday",),
                    CalenderCard(weekDay: "Sat",color: Colors.blue, date: "26 june", day: "Today",),
                    CalenderCard(weekDay: "Sun", color: Colors.grey, date: "27 june",day: "Tomorrow",),
                    CalenderCard(weekDay: "Mon", color: Colors.deepOrange, date: "29 june", day: "Blockday",),
                  ],
                ),
              ),
        
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
                child: Text("Available time slots", style: TextStyle(fontSize: width*0.05, color: Colors.black54),),
              ),
        
              GroupButton(
                
                options: GroupButtonOptions(
                  unselectedTextStyle: TextStyle(color: Colors.black54),
                  elevation: 5,
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                buttons: [
                  "7am - 9pm",
                  "10am - 12pm",
                  "1pm - 2pm",
                  "4pm - 6pm",
                  "8pm - 10pm"
                ],
              ),
        
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10, top: 20),
                child: Container(
                  
                  height: width*0.12,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(1, 1),
                        blurRadius: 5,
                        spreadRadius: 0.5
                      )
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Repeat Pickup", style: TextStyle(fontSize: width*0.05, color: Colors.black54)),
                      
                      Switch(
                        value:  isSwitched, 
                        onChanged:(bool value) {
                        setState(() {
                         isSwitched = value;
                        });
                      },)
                    ],
                  ),
                ),
              ),
        
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("How often repeat?", style: TextStyle(fontSize: width*0.05, color: Colors.black54),),
                  ],
                ),
              ),
        
              Padding(
                padding:  EdgeInsets.all(10),
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: width*0.12,
                  width: double.infinity,
                  
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(1, 1),
                        blurRadius: 5,
                        spreadRadius: 0.5
                      )
                    ]
                  ),
                  child: DropdownButtonHideUnderline(
                    
                    child: DropdownButton(
                      focusColor: Colors.grey,
                      isExpanded: true,
                      elevation: 8,
                      value: initTime,
                      items: timings.map((items) => 
                      DropdownMenuItem<String>(
                        value: items,
                        child: Text(items, )
                        )).toList(),
                      onChanged: (value) {
                        
                      },
                    ),
                  ),
                ),
              ),
        
        
        
        
        
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("How many times?", style: TextStyle(fontSize: width*0.05, color: Colors.black54) ),
                  ],
                ),
              ),
        
              Padding(
                padding:  EdgeInsets.all(8),
                child: Container(
                  padding: EdgeInsets.all(8),
                  height: width*0.12,
                  width: double.infinity,
                  
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(1, 1),
                        blurRadius: 5,
                        spreadRadius: 0.5
                      )
                    ]
                  ),
                  child: DropdownButtonHideUnderline(
                    
                    child: DropdownButton(
                      focusColor: Colors.grey,
                      isExpanded: true,
                      elevation: 8,
                      value: 1,
                      items: val.map((items) => 
                      DropdownMenuItem<int>(
                        value: items,
                        child: Text("$items")
                        )).toList(),
                      onChanged: (value) {
                        
                      },
                    ),
                  ),
                ),
              ),
        
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Container(
                  
                  height: width*0.13,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))
        
                      )
                    ),
                    child: Text("Continue"),
                    onPressed: () {
                      
                    },
                  ),
                ),
              )
              
              
        
        
        
            ],
          ),
        ),
      ),
    );
  }
}