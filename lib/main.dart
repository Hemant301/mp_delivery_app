import 'package:flutter/material.dart';
import 'package:food_delivery/auth/login.dart';
import 'package:food_delivery/auth/splashscreen.dart';

import 'bottam_nav/nav.dart';
import 'const/storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await StorageUtil.getInstance();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
        ),
        initialRoute: ('/splashscreen'),
        routes: {
          "/splashscreen": (context) => SplashScreen(),
          "/login": (context) => LoginScreen(),
          "/nav": (context) => NavBar(),
        });
  }
}
