import 'package:flutter/material.dart';
import 'package:food_delivery/const/user_cred.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6R3RltMkcOuYuiDdYdf2Nzq7kvqcgLMIqBMsb43_l&s")),
        ),
        title: Text(userCred.getUserNmae()),
        actions: [Icon(Icons.refresh), Icon(Icons.more_vert)],
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
