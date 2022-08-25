import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:food_delivery/const/user_cred.dart';

import '../apis/authapi.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.width / 1.3,
              width: MediaQuery.of(context).size.width,
              color: Colors.deepOrange,
              child: Column(children: [
                SizedBox(
                  height: 50,
                ),
                CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6R3RltMkcOuYuiDdYdf2Nzq7kvqcgLMIqBMsb43_l&s")),
                SizedBox(
                  height: 10,
                ),
                Text(
                  userCred.getUserNmae(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  userCred.getUserPhone(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "rajnandani@gmail.com",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),

                InkWell(
                  onTap: () async {
                    AuthApi _authapi = AuthApi();
                    try {
                      Map d = await _authapi.dologout();
                      print(d);

                      if (d['status'].toString() == '1') {
                        Future.delayed(Duration(seconds: 0), () {
                          Navigator.pushReplacementNamed(
                            context,
                            '/login',
                          );
                        });
                        userCred.logoutUser();
                        Fluttertoast.showToast(
                            msg: "Successfully LogOut",
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
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(1, 2), // changes position of shadow
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        Icon(Icons.logout_outlined),
                        Text(
                          "Logout",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ) // Text(
                //   "Login",
                //   textAlign: TextAlign.center,
                //   style: TextStyle(
                //       color: Colors.white,
                //       fontSize: 15,
                //       letterSpacing: 1,
                //       fontWeight: FontWeight.bold),
                // ),
              ]),
            ),
            ProfileItem(
              title: "Address",
              name: userCred.getUserAddres(),
            ),
            ProfileItem(
              title: "Phone",
              name: userCred.getUserPhone(),
            ),
            ProfileItem(
              title: "Wallet",
              name: userCred.getUserWallet(),
            ),
            ProfileItem(
              title: "Account Number",
              name: userCred.getUservirtual_account_number(),
            ),
            ProfileItem(
              title: "Ifsc Code",
              name: userCred.getUserIFSC(),
            ),
            ProfileItem(
              title: "Empid",
              name: userCred.getUserEmpid(),
            ),
            ProfileItem(
              title: "Blood Group",
              name: userCred.getUserBlodGroup(),
            ),
            ProfileItem(
              title: "D.O.B",
              name: userCred.getUserDOB(),
            ),
            ProfileItem(
              title: "Blood Group",
              name: userCred.getUserBlodGroup(),
            ),
            ProfileItem(
              title: "Joining Date",
              name: userCred.getUserJoin_Date(),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileItem extends StatelessWidget {
  ProfileItem({
    Key? key,
    this.onTap,
    this.name,
    this.title,
  }) : super(key: key);
  Function()? onTap;
  String? name;
  String? title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            // BoxShadow(
            //   color: Colors.grey,
            //   spreadRadius: 2,
            //   blurRadius: 2,
            //   offset: Offset(1, 2), // changes position of shadow
            // )
          ],
        ),
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title!,
                    style: TextStyle(
                        color: Colors.black,
                        letterSpacing: 1,
                        // fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  Text(
                    name!,
                    style: TextStyle(
                        color: Colors.black,
                        letterSpacing: 1,
                        // fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
