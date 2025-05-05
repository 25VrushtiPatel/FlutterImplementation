import 'package:flutter/material.dart';

class CallState extends StatefulWidget {
  const CallState({super.key});

  @override
  CallMain createState() => CallMain();
}

class CallMain extends State<CallState> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      body: Container(color: const Color.fromARGB(255, 233, 169, 208)),
    );
  }
}
