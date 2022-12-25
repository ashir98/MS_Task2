import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';

class PackageCard extends StatelessWidget {

  String image;


  
  PackageCard({required this.image});

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        height: width*0.35,
        width: double.infinity,
        child: Card(
          shadowColor: Colors.blue,
          elevation: 10,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
            
          ),
          color: Colors.blue,
          child: Row(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  color: Colors.white,
                  child: Container(
                    
                    decoration:  BoxDecoration(
                      
                      color: Colors.blue,
                      border: Border.all(width: 1, color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Image.asset(image),
                      ),
                    ),
                    
                  ),
                ),
              ),









              Expanded(
                flex: 6,
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children:  [
                            Text("5 T-Shirts dry and cleaning(60)",style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize:width*0.035),)
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("You will get 10% off buy this package",style: TextStyle(color: Colors.blue, fontSize: width*0.03),)
                          ],
                        ),
                         SizedBox(height: width*0.02,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white,width: 1),
                                    boxShadow: [
                                  BoxShadow(
                                    color: Colors.black87,
                                    offset: Offset(0.1, 0.1),
                                    blurRadius: 3,
                                    spreadRadius: 0.5
                                  )
                                ],
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.blue,
                                  ) ,
                                  height: width*0.13,
                                  width: width*0.13,
                                  child:  Image.asset("images/wash.png"),
                                  
                                ),
                                Text("Wash", style: TextStyle(color: Colors.blue,fontSize: width*0.035, fontWeight: FontWeight.w500),)
                              ],
                            ),
                            Column(
                          
                          children: [
                            Container(
                              
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white,width: 1),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black87,
                                    offset: Offset(0.1, 0.1),
                                    blurRadius: 3,
                                    spreadRadius: 0.5
                                  )
                                ],
                                
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.blue,
                              ) ,
                              height: width*0.13,
                              width: width*0.13,
                              child: Image.asset("images/dry.png"),
                              
                            ),
                            Text("Dry clean", style: TextStyle(color: Colors.blue,fontSize: width*0.035, fontWeight: FontWeight.w500),)
                          ],
                        ),
                        Column(
                          
                          children: [
                            Container(
                              
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white,width: 1),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black87,
                                    offset: Offset(0.1, 0.1),
                                    blurRadius: 3,
                                    spreadRadius: 0.5
                                  )
                                ],
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.blue,
                              ) ,
                              height: width*0.13,
                              width: width*0.13,
                              child: Image.asset("images/iron.png"),
                              
                            ),
                            Text("Iron", style: TextStyle(color: Colors.blue,fontSize: width*0.035, fontWeight: FontWeight.w500),)
                          ],
                        )
                          ],
                        ),
                        
                      ],
                    ),
                  ),
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}