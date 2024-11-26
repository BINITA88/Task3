import 'package:assignment/view/area_of_circle.dart';
import 'package:assignment/view/arithmetic.dart';
import 'package:assignment/view/simple_interest.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("My Dashboard"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              // mainAxisAlignment:
              //     MainAxisAlignment.center, // Center children vertically
              crossAxisAlignment:
                  CrossAxisAlignment.center, // Center children horizontally
              children: [
                ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.green)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SimpleInterest()),
                    );
                    // Add your action here
                  },
                  child: const Text("Simple Interest"),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.yellow)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Arithmetic()),
                    );
                    // Add your action here
                  },
                  child: const Text("Arithmetic calculation"),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AreaOfCircle()),
                    );
                    // Add your action here
                  },
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.pink)),
                  child: const Text("Area of circle"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
