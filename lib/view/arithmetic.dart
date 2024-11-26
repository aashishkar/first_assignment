import 'package:flutter/material.dart';

class ArithmeticScreen extends StatefulWidget {
  @override
  _ArithmeticScreenState createState() => _ArithmeticScreenState();
}

class _ArithmeticScreenState extends State<ArithmeticScreen> {
  final TextEditingController _num1Controller = TextEditingController();
  final TextEditingController _num2Controller = TextEditingController();
  String _result = '';

  void _calculate(String operation) {
    double num1 = double.tryParse(_num1Controller.text) ?? 0;
    double num2 = double.tryParse(_num2Controller.text) ?? 0;

    setState(() {
      switch (operation) {
        case '+':
          _result = 'Sum: ${num1 + num2}';
          break;
        case '-':
          _result = 'Difference: ${num1 - num2}';
          break;
        case '*':
          _result = 'Product: ${num1 * num2}';
          break;
        case '/':
          _result =
              num2 != 0 ? 'Quotient: ${num1 / num2}' : 'Cannot divide by zero';
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Arithmetic')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _num1Controller,
              decoration: InputDecoration(labelText: 'Enter first number'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _num2Controller,
              decoration: InputDecoration(labelText: 'Enter second number'),
              keyboardType: TextInputType.number,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () => _calculate('+'), child: Text('+')),
                ElevatedButton(
                    onPressed: () => _calculate('-'), child: Text('-')),
                ElevatedButton(
                    onPressed: () => _calculate('*'), child: Text('*')),
                ElevatedButton(
                    onPressed: () => _calculate('/'), child: Text('/')),
              ],
            ),
            SizedBox(height: 20),
            Text(_result, style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
