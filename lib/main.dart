import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pt/chat_screen.dart';

void main()  {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat Flutter',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primarySwatch: Colors.blue,
          canvasColor: const Color(0xFFFF2a3035),
          iconTheme: IconThemeData(
          color: Colors.white,
        )
      ),
      home: ChatScreen(),
    );
  }
}