import 'package:callback/second.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String topic = "Packages";
  callback(varTopic) {
    setState(() {
      topic = varTopic;
    });
  }

  static const String routeName = '/firstscreen';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Container(
              width: 50,
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Text(
                  " pressed or not ? ",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
            ),
            MyButton(topic: "pressed", callbackFunction: callback),
          ],
        ),
      ),
    );
  }
}
