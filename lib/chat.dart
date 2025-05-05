import 'package:flutter/material.dart';

class ChatState extends StatefulWidget {
  const ChatState({super.key});

  @override
  ChatMain createState() => ChatMain();
}

class ChatMain extends State<ChatState> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      body: Container(color: const Color.fromARGB(255, 137, 169, 181)),
    );
  }
}
