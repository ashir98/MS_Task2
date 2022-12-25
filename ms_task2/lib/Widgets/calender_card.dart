import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CalenderCard extends StatelessWidget {
  Color color;
  String date;
  String weekDay;
  String day;

  CalenderCard({required this.color, required this.date, required this.day, required this.weekDay});

  @override
  Widget build(BuildContext context) {
      double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
                  height: width*0.28,
                  width: width*0.22,
                  decoration: BoxDecoration(
                  
                    borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  child: Card(
                    elevation: 5,
                    shadowColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: color,
                            child: Center(
                              child: Text(weekDay, style: TextStyle(color: Colors.white, fontSize: width*0.06, fontWeight: FontWeight.bold),),
                            ),
                          ),
                         
                          
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Column(
                                children: [
                                  Text(date, style: TextStyle(color: Colors.black54,fontSize: width*0.035, fontWeight: FontWeight.bold),),
                                  Text(day, style: TextStyle(color: Colors.black54,fontSize: width*0.032, fontWeight: FontWeight.bold),)
                                ],
                              ),
                            ),
                          )
                        )
                      ],
                    ),
                  ),
                );
  }
}