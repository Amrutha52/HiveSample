import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hivesample/HomeScreen.dart';

void main() async
{
  await Hive.initFlutter(); // hive initizalization
  var box = await Hive.openBox('testBox'); // All of your data is stored in boxes.

  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hive Sample',
      home: Homescreen(),
    );
  }
}


