import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomeState extends StatefulWidget {
  String sEmail, sPassword;
  HomeState(this.sEmail, this.sPassword, {super.key});

  @override
  HomeMain createState() => HomeMain();
}

class HomeMain extends State<HomeState> {
  int iGroupValue = 4;
  bool androidCheck = false;
  bool iosCheck = false;
  bool flutterCheck = false;
  bool reactCheck = false;
  List<String> technologyArray = [];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(
            color: Colors.black,
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 215, 193, 219),
      ),
      body: Container(
        color: const Color.fromARGB(255, 233, 194, 207),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.green.shade100,
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "Email Id",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.green.shade100,
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        widget.sEmail,
                        style: TextStyle(color: Colors.black, fontSize: 18.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.green.shade100,
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          "Password",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.green.shade100,
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          widget.sPassword,
                          style: TextStyle(color: Colors.black, fontSize: 18.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Radio(
                        value: 0,
                        groupValue: iGroupValue,
                        onChanged: (value) {
                          setState(() {
                            setGender(0, "Male");
                          });
                        },
                      ),
                      Text(
                        "Male",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Radio(
                        value: 1,
                        groupValue: iGroupValue,
                        onChanged: (value) {
                          setState(() {
                            setGender(1, "Female");
                          });
                        },
                      ),
                      Text(
                        "Female",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Radio(
                        value: 2,
                        groupValue: iGroupValue,
                        onChanged: (value) {
                          setState(() {
                            setGender(2, "Other");
                          });
                        },
                      ),
                      Text(
                        "Other",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: androidCheck,
                  onChanged: (value) {
                    setState(() {
                      androidCheck = value!;
                      technologyMethod(value, "Android");
                    });
                  },
                ),
                Text(
                  "Android",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: iosCheck,
                  onChanged: (value) {
                    setState(() {
                      iosCheck = value!;
                      technologyMethod(value, "iOS");
                    });
                  },
                ),
                Text(
                  "iOS",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: flutterCheck,
                  onChanged: (value) {
                    setState(() {
                      flutterCheck = value!;
                      technologyMethod(value, "Flutter");
                    });
                  },
                ),
                Text(
                  "Flutter",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: reactCheck,
                  onChanged: (value) {
                    setState(() {
                      reactCheck = value!;
                      technologyMethod(value, "React Native");
                    });
                  },
                ),
                Text(
                  "React Native",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                width: 200.0,
                height: 40.0,
                color: const Color.fromARGB(255, 215, 180, 114),
                child: TextButton(
                  onPressed: () {
                    if (technologyArray.isNotEmpty) {
                      print(technologyArray);
                    }
                  },
                  child: Text(
                    "Show Technology",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void setGender(value, message) {
    iGroupValue = value;
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
    );
  }

  technologyMethod(isSelect, technology) {
    if (isSelect) {
      technologyArray.add(technology);
    } else {
      technologyArray.removeWhere((element) => element == technology);
    }
  }
}
