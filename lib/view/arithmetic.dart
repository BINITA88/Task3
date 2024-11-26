// import 'package:flutter/material.dart';

// class Arithmetic extends StatelessWidget {
//   const Arithmetic({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text("My Arithmetic page"),
//       ),
//       body: SafeArea(child: Text("Arithmetic page")),
//     );
//   }
// }

import 'package:flutter/material.dart';

class Arithmetic extends StatefulWidget {
  const Arithmetic({super.key});

  @override
  State<Arithmetic> createState() => _ArithmeticViewState();
}

class _ArithmeticViewState extends State<Arithmetic> {
  int first = 0;
  int second = 0;
  int result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Arithmetic'),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                first = int.parse(value);
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
            TextField(
              onChanged: (value) {
                second = int.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Second No',
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
              height: 8,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = first + second;
                  });
                },
                child: const Text('Addition'),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // State lai change gara
                  // in short build method ma feri hau
                  setState(() {
                    result = first - second;
                  });
                },
                child: const Text('Subtraction'),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = first * second;
                  });
                },
                child: const Text('Multiplication'),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
