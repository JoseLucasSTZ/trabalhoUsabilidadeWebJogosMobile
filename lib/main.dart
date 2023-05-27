import 'package:flutter/material.dart';
import 'package:flutter_test1/data/task_inherited.dart';
import 'package:flutter_test1/screens/Initial_Screen.dart';
import 'package:flutter_test1/screens/form_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: TaskInherited(child: const InitialScreen()));
  }
}
