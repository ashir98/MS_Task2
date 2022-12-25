import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:bubble/bubble.dart';


class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {


     const styleSomebody = BubbleStyle(
    color: Colors.white,
    borderColor: Colors.transparent,
    borderWidth: 1,
    elevation: 4,
    margin: BubbleEdges.only(top: 8, right: 50),
    alignment: Alignment.topLeft,
  );

  const styleMe = BubbleStyle(
    color: Colors.blue,
    borderColor: Colors.transparent,
    borderWidth: 1,
    elevation: 4,
    margin: BubbleEdges.only(top: 8, left: 50),
    alignment: Alignment.topRight,
    
  );



    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("images/wallpaper.jpg",)
            )
          ),
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      reverse: true,

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Bubble(
                            margin: BubbleEdges.symmetric(vertical: 10),
                            style: styleMe,
                            child: const Text(
                                'Of course. Are you interested in month-to-month or long term?',
                                style: TextStyle(fontSize: 17)),
                          ),
                          Bubble(
                            margin: BubbleEdges.symmetric(vertical: 10),
                            style: styleSomebody,
                            child: const Text(
                              'Hi could you tell me about your subscription options?',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                          Bubble(
                            margin: BubbleEdges.symmetric(vertical: 10),
                            style: styleMe,
                            child: const Text(
                                'Of course. Are you interested in month-to-month or long term?',
                                style: TextStyle(fontSize: 17)),
                          ),
                          Bubble(
                            margin: BubbleEdges.symmetric(vertical: 10),
                            style: styleSomebody,
                            child: const Text(
                              'Hi could you tell me about your subscription options?',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                          Bubble(
                            margin: BubbleEdges.symmetric(vertical: 10),
                            style: styleMe,
                            child: const Text(
                                'Of course. Are you interested in month-to-month or long term?',
                                style: TextStyle(fontSize: 17)),
                          ),
                          Bubble(
                            margin: BubbleEdges.symmetric(vertical: 10),
                            style: styleMe,
                            child: const Text(
                                'Of course. Are you interested in month-to-month or long term?',
                                style: TextStyle(fontSize: 17)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: TextField(
                          
                          cursorColor: Colors.blue,
                          cursorHeight: 22,
                          // ignore: prefer_const_constructors
                          decoration: InputDecoration(
                            
                              isDense: true,
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 20,
                              ),
                              filled: true,
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide:
                                      BorderSide(color: Colors.transparent)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(color: Colors.transparent)),
                              hintText: 'Write a reply'),
                        ),
                      ),
                      Row(
                        
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.emoji_emotions_rounded, color: Colors.black54,),
                          Icon(Icons.wallpaper_rounded,color: Colors.black54),
                          Icon(Icons.attach_file_rounded,color: Colors.black54),
                          Icon(Icons.send_rounded, color: Colors.blue,)
                          
                        ],
                      )
                      
                    ],
                  ),
                ),
              ],
            )
        ),
      ),
    );
  }
}