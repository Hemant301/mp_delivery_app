import 'package:food_delivery/bottam_nav/history.dart';
import 'package:food_delivery/bottam_nav/profile.dart';
import 'package:matcher/matcher.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    switchWithInt() {
      switch (pageIndex) {
        case 1:
          return HistoryPage();
        case 2:
          return ProfilePage();
        // case 3:
        //   return Wishlist();
        // case 4:
        //   return Profile();
        case 0:

        default:
          return HomeScreen();
      }
    }

    return Scaffold(
      body: switchWithInt(),
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          // borderRadius: const BorderRadius.only(
          //   topLeft: Radius.circular(20),
          //   topRight: Radius.circular(20),
          // ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
                onTap: () {
                  setState(() {
                    pageIndex = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home,
                      color: pageIndex == 0 ? Colors.red : Colors.grey,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                        fontSize: pageIndex == 0 ? 16 : 10,
                        color: pageIndex == 0
                            ? Color.fromARGB(255, 202, 0, 0)
                            : Colors.grey,
                      ),
                    )
                  ],
                )),
            InkWell(
                onTap: () {
                  setState(() {
                    pageIndex = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.book,
                      color: pageIndex == 1 ? Colors.red : Colors.grey,
                    ),
                    Text(
                      "Order",
                      style: TextStyle(
                        fontSize: pageIndex == 1 ? 16 : 10,
                        color: pageIndex == 1
                            ? Color.fromARGB(255, 202, 0, 0)
                            : Colors.grey,
                      ),
                    )
                  ],
                )),
            InkWell(
                onTap: () {
                  setState(() {
                    pageIndex = 2;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person,
                      color: pageIndex == 2 ? Colors.red : Colors.grey,
                    ),
                    Text(
                      "Profile",
                      style: TextStyle(
                        fontSize: pageIndex == 2 ? 16 : 10,
                        color: pageIndex == 2
                            ? Color.fromARGB(255, 202, 0, 0)
                            : Colors.grey,
                      ),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
