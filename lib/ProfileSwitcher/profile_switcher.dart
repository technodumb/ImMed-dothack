import 'package:flutter/material.dart';
import 'package:immed_dothack/ProfileSwitcher/components/my_slider.dart';
import 'package:immed_dothack/ProfileSwitcher/components/slider_value_display.dart';

import '../EmergencyScreen/components/my_other_slider.dart';
import 'components/normal_textfield.dart';
import 'components/round_button.dart';

class ProfileSwitcher extends StatelessWidget {
  const ProfileSwitcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'ImMed Companion App',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: height * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    RoundButton(id: 1),
                    SizedBox(width: 30),
                    RoundButton(id: 2),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    RoundButton(id: 3),
                    SizedBox(width: 30),
                    RoundButton(id: 4)
                  ],
                ),
                const RoundButton(id: 5),
                const SizedBox(height: 30),
                const MySlider(),
                const SliderValue(),
                const OtherSlider(),
                const MyTextField(),
                const MyTextBox(),
              ],
            ),
          ),
        ),
    );
  }
}
