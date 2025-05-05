import 'package:flutter/material.dart';

class CustomListState extends StatefulWidget {
  const CustomListState({super.key});

  @override
  CustomListMain createState() => CustomListMain();
}

class CustomListMain extends State<CustomListState> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          " Custom List",
          style: TextStyle(
            color: Colors.black,
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 159, 46, 179),
      ),
      body: CustomListDesign(),
    );
  }
}

class CustomListDesign extends StatelessWidget {
  List<String> titleArray = ["A", "B", "C", "D", "E"];
  List<String> leadingArray = ["a.jpg", "b.jpg", "c.jpg", "d.jpg", "e.jpg"];
  String imagePath = "asset/icons/";

  CustomListDesign({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return ListView.builder(
      itemCount: titleArray.length,
      itemBuilder: (context, position) {
        return Padding(
          padding: EdgeInsets.all(10.0),
          child: Card(
            elevation: 3.0,
            child: Padding(
              padding: EdgeInsets.all(3.0),
              child: Row(
                children: [
                  Image.asset(
                    imagePath + leadingArray[position],
                    width: 100.0,
                    height: 100.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(titleArray[position]),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
