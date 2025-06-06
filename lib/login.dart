import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/custom_list.dart';
import 'package:flutter_app/home.dart';
import 'package:flutter_app/list.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(debugShowCheckedModeBanner: false, home: LoginState());
  }
}

class LoginState extends StatefulWidget {
  const LoginState({super.key});

  @override
  LoginMain createState() => LoginMain();
}

class LoginMain extends State<LoginState> {
  GlobalKey<FormState> formKey = GlobalKey();
  late String sEmail, sPassword;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login",
          style: TextStyle(
            color: Colors.black,
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 226, 192, 232),
      ),
      body: Container(
        color: const Color.fromARGB(255, 233, 194, 207),
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'asset/icons/smiley.jpeg',
                width: 100.0,
                height: 100.0,
              ),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30.0,
                        vertical: 10.0,
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          hintText: "Enter Email Id",
                          labelText: "Email Id",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Email Id Required";
                          } else {
                            return null;
                          }
                        },
                        onSaved: (value) {
                          sEmail = value!;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30.0,
                        vertical: 10.0,
                      ),
                      child: TextFormField(
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          hintText: "Enter Password",
                          labelText: "Password",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password Required";
                          } else {
                            return null;
                          }
                        },
                        onSaved: (value) {
                          sPassword = value!;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Container(
                        width: 150.0,
                        height: 40.0,
                        color: const Color.fromARGB(255, 215, 180, 114),
                        child: TextButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              formKey.currentState!.save();
                              print(
                                "Login Successfully. \nEmail Id :  $sEmail, Password : $sPassword",
                              );
                              Fluttertoast.showToast(
                                gravity: ToastGravity.BOTTOM,
                                msg: "Login Successfully",
                                toastLength: Toast.LENGTH_LONG,
                              );
                              // Navigator.push(context, MaterialPageRoute(builder: (_) => HomeState(sEmail,sPassword)));
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => CustomListState(),
                                ),
                              );
                            }
                          },
                          child: Text(
                            "Login",
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
            ],
          ),
        ),
      ),
    );
  }
}
