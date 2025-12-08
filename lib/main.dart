<<<<<<< HEAD
import 'package:figma1/home_page.dart';
import 'package:figma1/splash.dart';

import 'package:flutter/material.dart';

void main() {
=======
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/Views/home_page.dart';
import 'package:notes_app/widgets/constant.dart';

void main() async {

  await Hive.initFlutter();
  await Hive.openBox(knotebox);
>>>>>>> 0ae1c6f674bb6871fe26498800a4a3ec8aa56fcf
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return MaterialApp(debugShowCheckedModeBanner: false, home: Splash());
=======
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: HomePage(),
    );
>>>>>>> 0ae1c6f674bb6871fe26498800a4a3ec8aa56fcf
  }
}
