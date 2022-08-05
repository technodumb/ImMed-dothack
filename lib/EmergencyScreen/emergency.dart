import 'package:flutter/material.dart';
import 'package:immed_dothack/EmergencyScreen/components/my_other_slider.dart';

class EmergencyScreen extends StatelessWidget {
  const EmergencyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
          child: Column(
            children:  [
          const Text(
            "Emergency",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 60),
          const Text(
            "Contacting the nearby hospital",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Image.asset("assets/transmit.gif"),
          const SizedBox(height: 60),
          const OtherSlider(),
        ],
      ),),
    ),);
  }
}
