import 'package:flutter/material.dart';
import 'package:immed_dothack/ProfileSwitcher/components/state_for_slider.dart';
import 'package:provider/provider.dart';

class OtherSlider extends StatelessWidget{

  const OtherSlider({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    final sliderState = Provider.of<SliderState>(context);
    return Slider(
      value: 1 - sliderState.sliderState,
      onChanged: (value) => sliderState.sliderState = 1-value,
    );
  }
}

