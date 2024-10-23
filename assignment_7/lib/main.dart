import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  int sum = 0;

  TextEditingController firstController = TextEditingController();
  TextEditingController secondController = TextEditingController();

  void addNumbers() {
    setState(() {
      sum = int.parse(firstController.text) + int.parse(secondController.text);
    });
  }

  void subtractNumbers() {
    setState(() {
      sum = int.parse(firstController.text) - int.parse(secondController.text);
    });
  }

  void multiplyNumbers() {
    setState(() {
      sum = int.parse(firstController.text) * int.parse(secondController.text);
    });
  }


  void divideNumbers() {
    setState(() {
      sum = int.parse(firstController.text) ~/ int.parse(secondController.text);
    });
  }

  void clear() {
    setState(() {
      firstController.clear();
      secondController.clear();
      sum = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Unit 5 Calculator"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Addition Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: TextField(
                    controller: firstController,
                    decoration: const InputDecoration(labelText: "First Number"),
                    keyboardType: TextInputType.number,
                  ),
                ),
                const Text(" + "),
                Expanded(
                  child: TextField(
                    controller: secondController,
                    decoration: const InputDecoration(labelText: "Second Number"),
                    keyboardType: TextInputType.number,
                  ),
                ),
                const SizedBox(width: 8),
                Text('= $sum'),
                IconButton(
                  icon: const Icon(Icons.calculate),
                  onPressed: addNumbers,
                ),
              ],
            ),

            // Subtraction Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: TextField(
                    controller: firstController,
                    decoration: const InputDecoration(labelText: "First Number"),
                    keyboardType: TextInputType.number,
                  ),
                ),
                const Text(" - "),
                Expanded(
                  child: TextField(
                    controller: secondController,
                    decoration: const InputDecoration(labelText: "Second Number"),
                    keyboardType: TextInputType.number,
                  ),
                ),
                const SizedBox(width: 8),
                Text('= $sum'),
                IconButton(
                  icon: const Icon(Icons.calculate),
                  onPressed: subtractNumbers,
                ),
              ],
            ),

            // Multiplication Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: TextField(
                    controller: firstController,
                    decoration: const InputDecoration(labelText: "First Number"),
                    keyboardType: TextInputType.number,
                  ),
                ),
                const Text(" * "),
                Expanded(
                  child: TextField(
                    controller: secondController,
                    decoration: const InputDecoration(labelText: "Second Number"),
                    keyboardType: TextInputType.number,
                  ),
                ),
                const SizedBox(width: 8),
                Text('= $sum'),
                IconButton(
                  icon: const Icon(Icons.calculate),
                  onPressed: multiplyNumbers,
                ),
              ],
            ),

            // Division Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: TextField(
                    controller: firstController,
                    decoration: const InputDecoration(labelText: "First Number"),
                    keyboardType: TextInputType.number,
                  ),
                ),
                const Text(" ÷ "),
                Expanded(
                  child: TextField(
                    controller: secondController,
                    decoration: const InputDecoration(labelText: "Second Number"),
                    keyboardType: TextInputType.number,
                  ),
                ),
                const SizedBox(width: 8),
                Text('= $sum'),
                IconButton(
                  icon: const Icon(Icons.calculate),
                  onPressed: divideNumbers,
                ),
              ],
            ),

            // Clear button
            ElevatedButton(
              onPressed: clear,
              child: const Text("Clear"),
            ),
          ],
        ),
      ),
    );
  }
}
