import 'package:flutter/material.dart';

class ListState extends StatefulWidget {
  const ListState({super.key});

  @override
  ListMain createState() => ListMain();
}

class ListMain extends State<ListState> {
  List<String> titleArray = ["A", "B", "C", "D", "E"];
  List<String> subTitleArray = [
    "a Description",
    "b Description",
    "c Description",
    "d Description",
    "e Description",
  ];
  List<String> leadingArray = ["a.jpg", "b.jpg", "c.jpg", "d.jpg", "e.jpg"];
  List<String> trailingArray = ["e.jpg", "d.jpg", "c.jpg", "b.jpg", "a.jpg"];
  String imagePath = "asset/icons/";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "List",
          style: TextStyle(
            color: Colors.black,
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 159, 46, 179),
      ),
      body: ListView.builder(
        itemCount: titleArray.length,
        itemBuilder: (context, position) {
          return ListTile(
            title: Text(titleArray[position]),
            subtitle: Text(subTitleArray[position]),
            leading: Image.asset(imagePath + leadingArray[position]),
            trailing: Image.asset(imagePath + trailingArray[position]),
          );
        },
      ),
    );
  }
}
