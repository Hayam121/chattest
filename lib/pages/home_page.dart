import 'package:chattest/widgets/active_chats.dart';
import 'package:chattest/widgets/recent_chats.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Icon(Icons.notifications), 
            ),
        ],
      ),
      body: ListView(
        children:  [
         const Padding(
            padding: EdgeInsets.symmetric(vertical: 25,horizontal: 20),
            child: Text(
              "Messages",
               style:TextStyle(
                color: Color(0xff206F7E),
                fontSize: 28,
                fontWeight: FontWeight.bold,
                ),),  
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow:[
                     BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 10,
                      spreadRadius: 2,
                      offset: const Offset(0, 3),
                     ), 
                  ],
                ),  
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                      SizedBox(
                        width: 300,
                        child: Padding(
                          padding:const EdgeInsets.symmetric(horizontal: 15),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: "Search",
                              border: InputBorder.none,
                              ),),
                           ),
                      ),
                      const Icon(
                        Icons.search,
                        color: Color(0xff206F7E),
                        ),
                ]),
            ),
            ),
             const ActiveChats(),
            const RecentChats(), 
        ],),
          floatingActionButton: FloatingActionButton(
            onPressed:(){},
            backgroundColor: const Color(0xff206F7E),
            child: const Icon(Icons.message,color: Colors.white),
             ),
    );
  }
}