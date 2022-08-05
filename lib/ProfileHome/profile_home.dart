import 'package:flutter/material.dart';
import 'package:immed_dothack/ProfileSwitcher/components/state_for_slider.dart';
import 'package:provider/provider.dart';

import '../globals.dart';
import 'components/rounded_button.dart';

class ProfileHome extends StatelessWidget {
  const ProfileHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int id = ModalRoute.of(context)?.settings.arguments as int;
    final sliderState = Provider.of<SliderState>(context);
    int sliderStateValue = (sliderState.sliderState*100).truncate();
    if(!sliderState.isNormal(id)) sliderStateValue = 100 - sliderStateValue;
    return  Scaffold(
        body: Container(
          color: Colors.white24,
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(children: [
              const SizedBox(height: 50),
              Container(
                height: 300,
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Welcome back, ${profileNames[id - 1]}...\nYour health is at",
                      style: const TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "$sliderStateValue%",
                      style: const TextStyle(
                        fontSize: 70,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("Critical Condition",
                        style:
                            TextStyle(fontSize: 30, color: Colors.white)),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("Contact the Doctor immediately!",
                        style: TextStyle(fontSize: 20, color: Colors.white))
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: RoundedButton(
                      text: "Full Check up",
                      color: Colors.green,
                      press: () {
                        Navigator.pushNamed(context, '/full_check_up');
                      },
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: RoundedButton(
                      text: "Partial Check up",
                      color: Colors.purple,
                      press: () {
                        Navigator.pushNamed(context, '/partial_check_up');
                      },
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: RoundedButton(
                      text: "Show Health Data",
                      color: Colors.orange,
                      press: () {
                        Navigator.pushNamed(context, '/show_health');
                      },
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: RoundedButton(
                      text: "Emergency button",
                      color: Colors.pink,
                      press: () {
                        Navigator.pushNamed(context, '/emergency_screen');
                      },
                    ),
                  ),
                ],
              )
            ]),
          ),
        ),
    );
  }
}
