import 'package:flutter/material.dart';

class FullCheckUpScreen extends StatelessWidget {
  const FullCheckUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            children: [
              const Text("Full Check Up",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              const SizedBox(height: 50),
              const Text('Searching for ImMed devices nearby'),
              const SizedBox(height: 16),
              Image(image: AssetImage('assets/loading.gif')),
            ],
          ),
        ),
      )),
    );
  }
}
