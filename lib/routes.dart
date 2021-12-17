import 'package:callback/first.dart';
import 'package:callback/second.dart';
import 'package:flutter/material.dart';

class BookReading extends StatelessWidget {
  BookReading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/firstscreen": (context) {
          return MyApp();
        },
        "/secondscreen": (context) {
          return Button();
        }
      },
    );
  }
}
