import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'state_for_slider.dart';

class MySlider extends StatelessWidget {
  const MySlider({ Key? key }) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    final sliderState = Provider.of<SliderState>(context);
    return Slider(
      value: sliderState.sliderState,
      onChanged: (value) => sliderState.sliderState = value,
    );
  }
}