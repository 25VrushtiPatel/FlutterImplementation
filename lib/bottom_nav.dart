import 'package:flutter/material.dart';
import 'package:flutter_app/call.dart';
import 'package:flutter_app/chat.dart';
import 'package:flutter_app/status.dart';

class BottomState extends StatefulWidget {
  @override
  BottomMain createState() => BottomMain();
}

class BottomMain extends State<BottomState> {
  var tabArray = [ChatState(), StatusState(), CallState()];
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Bottom Navigation",
            style: TextStyle(
              color: Colors.black,
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 159, 46, 179),
        ),
        body: tabArray[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(Icons.verified_user),
              label: "Profile",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.logout), label: "Logout"),
          ],
          currentIndex: selectedIndex,
          selectedItemColor: Colors.black,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
