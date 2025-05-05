import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/bottom_nav.dart';
import 'package:flutter_app/custom_list.dart';
import 'package:flutter_app/navigationDemo.dart';
import 'package:flutter_app/tabDemo.dart';

class SplashDemo extends StatelessWidget {
  const SplashDemo({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashState());
  }
}

class SplashState extends StatefulWidget {
  const SplashState({super.key});

  @override
  SplashMain createState() => SplashMain();
}

class SplashMain extends State<SplashState> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimeMethod();
  }

  Future<Timer> startTimeMethod() async {
    return Timer(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (_) => BottomState()));
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      body: Center(
        child: Container(
          child: Image.asset(
            "asset/icons/smiley.jpeg",
            width: 100.0,
            height: 100.0,
          ),
        ),
      ),
    );
  }
}
