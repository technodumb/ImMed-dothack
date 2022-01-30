import 'package:flutter/material.dart';
import 'package:immed_dothack/globals.dart';

class RoundButton extends StatelessWidget {
  final int id;
  final Color color, textColor;
  const RoundButton({
    Key? key,
    required this.id,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: color,
        // borderRadius: BorderRadius.circular(100),
        shape: BoxShape.circle,
      ),
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(30),
      child: TextButton(
        onPressed: () => goToProfile(context, id),
        child: Column(
          children: [
            Text(
              id.toString(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            SizedBox(height: size.height * 0.01),
            Text(
              profileNames[id - 1],
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }

  goToProfile(context, int id) {
    Navigator.pushNamed(context, '/profile_home', arguments: id);
  }
}
