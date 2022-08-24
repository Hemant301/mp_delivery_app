import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
              "Raj Nandani",
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
              "8210925188",
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
            // Text(
            //   "Login",
            //   textAlign: TextAlign.center,
            //   style: TextStyle(
            //       color: Colors.white,
            //       fontSize: 15,
            //       letterSpacing: 1,
            //       fontWeight: FontWeight.bold),
            // ),
          ]),
        )
      ],
    );
  }
}
