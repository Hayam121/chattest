import 'package:chattest/widgets/chat_bottom_sheet.dart';
import 'package:chattest/widgets/chat_sample.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // for custom size of app bar
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70.0),
        child: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: AppBar(
            leadingWidth: 30,
            title: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    "assets/images/lobna.jpg",
                    height: 45,
                    width: 45,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    children: [
                      Text(
                        "Hayam Mahmoud",
                        style:
                            TextStyle(color: Color(0xff206F7E), fontSize: 25),
                      ),
                      Row(
                        children: [
                          Icon(Icons.roundabout_left),
                          Text(
                            "Active Now",
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 25),
                child: Icon(
                  Icons.more_vert,
                  color: Color(0xff206F7E),
                  size: 30,
                ),
              )
            ],
          ),
        ),
      ),
      body: ListView(
        padding:
            const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 80),
        children: const [
          ChatSample(),
          ChatSample(),
          ChatSample(),
          ChatSample(),
          ChatSample(),
          ChatSample(),
        ],
      ),
      bottomSheet: const ChatBottomSheet(),
    );
  }
}
