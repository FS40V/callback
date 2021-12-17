import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String topic;
  final Function callbackFunction;
  const Button({Key? key, required this.topic, required this.callbackFunction})
      : super(key: key);

  static const String routeName = '/secondscreen';
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        callbackFunction(topic);
      },
      child: Container(
        width: double.maxFinite,
        height: 70,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: Text(
            topic,
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
