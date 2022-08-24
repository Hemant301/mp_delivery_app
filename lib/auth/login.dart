import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:lottie/lottie.dart';

import '../apis/authapi.dart';
import '../const/textFild.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 60,
            ),
            Center(child: Lottie.asset("assets/delivery.json")),
            Center(
              child: Text(
                "Login",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                "Email Address",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Textfiless(
                title: "enter your email",
                icon: Icons.email,
                controller: _emailController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Text(
                "Password",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Textfiless(
                title: "enter your password",
                icon: Icons.email,
                controller: _passwordController,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: InkWell(
                onTap: () async {
                  if (_emailController.text == null ||
                      _emailController.text == "") {
                    Fluttertoast.showToast(
                        msg: "Enter email!",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0);

                    return;
                  } else if (_passwordController.text == null ||
                      _passwordController.text == "") {
                    Fluttertoast.showToast(
                        msg: "Enter password!",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0);

                    return;
                  }

                  AuthApi _authapi = AuthApi();
                  try {
                    Map d = await _authapi.dologin(
                        email: _emailController.text,
                        password: _passwordController.text);
                    print(d);
                    if (d['response'] == '1') {
                      // userCred.addUserId(d['accountId']);
                      // userCred.setUserFilledInfo("DONE");
                      // userCred.setUserUploadPhoto("DONE");
                      // print(data);
                      Future.delayed(Duration(seconds: 0), () {
                        Navigator.pushReplacementNamed(
                          context,
                          '/nav',
                        );
                      });
                      Fluttertoast.showToast(
                          msg: "Login Successfully",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.green,
                          textColor: Colors.white,
                          fontSize: 16.0);
                    } else {
                      Fluttertoast.showToast(
                          msg: " ${d['msg']}! ",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 16.0);
                    }
                  } catch (e) {}
                },
                // onTap: () {
                //   Navigator.pushNamed(context, "/nav");
                // },
                child: Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width - 30,
                  decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text(
                      "Login",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold),
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
}
