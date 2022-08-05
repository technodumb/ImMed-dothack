import 'package:flutter/material.dart';
import 'package:immed_dothack/globals.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const RoundedButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      height: size.height * 0.25,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(29),
      ),
      // width: size.width * 0.8,
      child: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(10),
        ),
        // padding: EdgeInsets.symmetric(horizontal: 10),
        onPressed: () => press(),
        child: Text(
          text,
          style: TextStyle(color: textColor, fontSize: 25),
        ),
      ),
    );
  }
}
