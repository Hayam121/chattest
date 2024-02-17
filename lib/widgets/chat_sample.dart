import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';

class ChatSample extends StatelessWidget {
  const ChatSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: const EdgeInsets.only(right: 80),
        child: ClipPath(
          clipper:UpperNipMessageClipper(MessageType.receive),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                child: const Text(
                 "Hi, Developer How Are you?",
                 style: TextStyle(
                   fontSize: 16,
                 ),
                 ),
              ),
             const Padding(
                padding: EdgeInsets.only(left:20),
                child:  Text(
                    "10:54 AM",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  ),
              ), 
            ],
          ),
          ),
          ),
       Container(
        alignment: Alignment.centerRight,
         child: Padding(padding: const EdgeInsets.only(top: 20,left: 80),
          child: ClipPath(
            clipper:LowerNipMessageClipper(MessageType.send),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 20,top: 10,bottom: 25,right: 20),
                  decoration:const BoxDecoration(
                    color: Color(0xff206F7E),
                  ),
                  child: const Text(
                    "Hello Programmer, i am fine thanks for asking what about you. i hope you will be fine ",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white
                    ),
                  ),
                ),
               const Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                    "11:54 AM",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  ),
              ), 
              ],
            ),
            ),),
       ),
      ],

    );
  }
}