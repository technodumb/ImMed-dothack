import 'package:flutter/material.dart';

class SliderState with ChangeNotifier {
  double _sliderState = 0.0;
  String _fieldText = "";
  final List<int> _normal = [];
  double get sliderState => _sliderState;
  String get fieldText => _fieldText;

  bool isNormal(int key) => _normal.contains(key);

  set sliderState(double value) {
    _sliderState = value;
    notifyListeners();
    // print(value);
  }

  set fieldText(String value) {
    _fieldText = value;
    setNormal = value;
    notifyListeners();
  }

  set setNormal(String value) {
    _normal.clear();
    value.split(',').forEach((element) {
      _normal.add(int.parse(element));
    });
  }
}

