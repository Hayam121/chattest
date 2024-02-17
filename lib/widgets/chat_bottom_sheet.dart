import 'package:flutter/material.dart';

class ChatBottomSheet extends StatelessWidget {
  const ChatBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      decoration: BoxDecoration(
        color: const Color(0xff206F7E),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 8),
            child: Icon(
              Icons.emoji_emotions_outlined,
              color: Color.fromARGB(255, 255, 255, 255),
              size: 30,
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                alignment: Alignment.centerRight,
                width: 270,
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Type Something",
                    hintStyle: TextStyle(color: Colors.white),
                    border: InputBorder.none,                    
                  ),
                ),
              )),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.only(right: 8),
            child: Icon(
              Icons.camera_enhance_rounded,
              color: Colors.white,
              size: 30,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 8),
            child: Icon(
              Icons.attach_file_outlined,
              color: Colors.white,
              size: 30,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.send,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
