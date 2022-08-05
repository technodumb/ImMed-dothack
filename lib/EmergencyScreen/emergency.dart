import 'package:flutter/material.dart';

class EmergencyScreen extends StatelessWidget {
  const EmergencyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
          child: Column(
        children: [
          Text(
            "Emergency",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 60),
          Text(
            "Contacting the nearby hospital",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Image.asset("assets/transmit.gif"),
        ],
      )),
    ));
  }
}
