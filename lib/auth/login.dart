import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:lottie/lottie.dart';

import '../apis/authapi.dart';
import '../const/textFild.dart';
import '../const/user_cred.dart';

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
                   
                    if (d['status'].toString() == '1') {
                     
                      userCred
                          .addUserId(d["user_details"]["user_id"].toString());
                      userCred.addName(d["user_details"]["name"].toString());
                      userCred.addPhone(d["user_details"]["phone"].toString());
                      userCred
                          .addwallet(d["user_details"]["wallet"].toString());
                      userCred.addvirtual_account_number(d["user_details"]
                              ["virtual_account_number"]
                          .toString());
                      userCred.addvirtual_account_ifsc_code(d["user_details"]
                              ["virtual_account_ifsc_code"]
                          .toString());
                      userCred.addempid(d["user_details"]["empid"].toString());
                      userCred.addblodgroup(
                          d["user_details"]["blood_group"].toString());
                      userCred
                          .addgender(d["user_details"]["gender"].toString());
                      userCred.add_date_of_birth(
                          d["user_details"]["date_of_birth"].toString());
                      userCred
                          .addAddres(d["user_details"]["address"].toString());
                      userCred.addjoining_date(
                          d["user_details"]["joining_date"].toString());
                      userCred.addprofile_picture(
                          d["user_details"]["profile_picture"].toString());

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
                          msg: " ${d['message']}! ",
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
