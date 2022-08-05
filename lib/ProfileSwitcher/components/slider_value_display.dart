import 'package:flutter/material.dart';
import 'package:immed_dothack/ProfileSwitcher/components/state_for_slider.dart';
import 'package:provider/provider.dart';

class SliderValue extends StatelessWidget {
  const SliderValue({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   final sliderState = Provider.of<SliderState>(context);
    int sliderVal = (sliderState.sliderState*100).truncate();
    return Text(
      '$sliderVal --------------- ${100-sliderVal}',
      style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    );
  }
}