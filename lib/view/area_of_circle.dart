import 'package:flutter/material.dart';

class AreaOfCircle extends StatefulWidget {
  const AreaOfCircle({super.key});

  @override
  State<AreaOfCircle> createState() => _AreaOfCircleState();
}

class _AreaOfCircleState extends State<AreaOfCircle> {
  double radius = 0;
  double result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Area of circle."),
      ),
      body: SafeArea(
          child: Column(
        children: [
          TextField(
            onChanged: (value) {
              radius = double.parse(value);
            },
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter First No',
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            'Result : $result',
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.red)),
              onPressed: () {
                setState(() {
                  result = 3.14159 * radius * radius;
                });
              },
              child: const Text(
                'Addition',
                style: TextStyle(),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
