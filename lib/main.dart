import 'package:basic_madan/widgets/animated_text.dart';
import 'package:basic_madan/widgets/container_size.dart';
import 'package:basic_madan/widgets/drawer.dart';
import 'package:basic_madan/widgets/snakbar.dart';
import 'package:basic_madan/widgets/stack.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        //debugShowCheckedModeBanner: false,
        brightness: Brightness.dark,
        primaryColor: Colors.deepPurple,
      ),
      home: const StackWidget(),
    );
  }
}
