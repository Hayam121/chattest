import 'package:chattest/pages/chat_page.dart';
import 'package:chattest/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor:const Color(0xFFF5f5f3),
            appBarTheme:const AppBarTheme(
             backgroundColor:  Colors.white,
            foregroundColor:Color(0xff206F7E),
            ),
          ),
        routes: {
          "/" :(context) => const HomePage(),
          "chatPage":(context) =>const ChatPage(),
        },
      );
  }
}
