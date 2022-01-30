import 'package:flutter/material.dart';

class HealthDataScreen extends StatelessWidget {
  const HealthDataScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(children: [
              const SizedBox(height: 50),
              const Text(
                "The Health Data",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: size.width * 0.6,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.orange),
                padding: const EdgeInsets.all(10),
                child: const Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Blood Pressure",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: size.width * 0.6,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green),
                padding: const EdgeInsets.all(10),
                child: const Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Blood Sugar",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: size.width * 0.6,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: Colors.red),
                padding: const EdgeInsets.all(10),
                child: const Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Temperature",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: size.width * 0.6,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.purple),
                padding: const EdgeInsets.all(10),
                child: const Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Blood Oxygen Level",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ])),
      ),
    );
  }
}
