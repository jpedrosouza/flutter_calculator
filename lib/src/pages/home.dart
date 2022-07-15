import 'package:flutter/material.dart';
import 'package:flutter_calculator/src/controllers/home_controller/home_controller.dart';
import 'package:flutter_calculator/src/widgets/calculator_button.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (_) => SafeArea(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.3,
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.all(20),
                color: Colors.grey[200],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      controller.display,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 45, 120, 157),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              calculatorButtons(),
            ],
          ),
        ),
      ),
    );
  }

  // Create grid 5x4 with calculator buttons

  Widget calculatorButtons() {
    return GridView.count(
      primary: false,
      shrinkWrap: true,
      crossAxisCount: 4,
      children: [
        CalculatorButton(
          text: '%',
          onPressed: (value) {
            controller.setOperation(value);
            controller.getValue();
          },
          isNumberValue: false,
          textColor: const Color.fromARGB(255, 45, 120, 157),
        ),
        CalculatorButton(
          text: '(',
          onPressed: (value) {
            controller.setDisplay(value);
          },
          isNumberValue: false,
          textColor: const Color.fromARGB(255, 45, 120, 157),
        ),
        CalculatorButton(
          text: ')',
          onPressed: (value) {
            controller.setDisplay(value);
          },
          isNumberValue: false,
          textColor: const Color.fromARGB(255, 45, 120, 157),
        ),
        CalculatorButton(
          text: '/',
          onPressed: (value) {
            controller.setOperation(value);
            controller.getValue();
          },
          isNumberValue: false,
          backgroundColor: const Color.fromARGB(255, 45, 120, 157),
          textColor: Colors.white,
        ),
        CalculatorButton(
          text: '7',
          onPressed: (value) {
            controller.setDisplay(value);
          },
          isNumberValue: true,
          textColor: const Color.fromARGB(255, 45, 120, 157),
        ),
        CalculatorButton(
          text: '8',
          onPressed: (value) {
            controller.setDisplay(value);
          },
          isNumberValue: true,
          textColor: const Color.fromARGB(255, 45, 120, 157),
        ),
        CalculatorButton(
          text: '9',
          onPressed: (value) {
            controller.setDisplay(value);
          },
          isNumberValue: true,
          textColor: const Color.fromARGB(255, 45, 120, 157),
        ),
        CalculatorButton(
          text: 'X',
          onPressed: (value) {
            controller.setOperation(value);
            controller.getValue();
          },
          isNumberValue: false,
          backgroundColor: const Color.fromARGB(255, 45, 120, 157),
          textColor: Colors.white,
        ),
        CalculatorButton(
          text: '4',
          onPressed: (value) {
            controller.setDisplay(value);
          },
          isNumberValue: true,
          textColor: const Color.fromARGB(255, 45, 120, 157),
        ),
        CalculatorButton(
          text: '5',
          onPressed: (value) {
            controller.setDisplay(value);
          },
          isNumberValue: true,
          textColor: const Color.fromARGB(255, 45, 120, 157),
        ),
        CalculatorButton(
          text: '6',
          onPressed: (value) {
            controller.setDisplay(value);
          },
          isNumberValue: true,
          textColor: const Color.fromARGB(255, 45, 120, 157),
        ),
        CalculatorButton(
          text: '-',
          onPressed: (value) {
            controller.setOperation(value);
            controller.getValue();
          },
          isNumberValue: false,
          backgroundColor: const Color.fromARGB(255, 45, 120, 157),
          textColor: Colors.white,
        ),
        CalculatorButton(
          text: '1',
          onPressed: (value) {
            controller.setDisplay(value);
          },
          isNumberValue: true,
          textColor: const Color.fromARGB(255, 45, 120, 157),
        ),
        CalculatorButton(
          text: '2',
          onPressed: (value) {
            controller.setDisplay(value);
          },
          isNumberValue: true,
          textColor: const Color.fromARGB(255, 45, 120, 157),
        ),
        CalculatorButton(
          text: '3',
          onPressed: (value) {
            controller.setDisplay(value);
          },
          isNumberValue: true,
          textColor: const Color.fromARGB(255, 45, 120, 157),
        ),
        CalculatorButton(
          text: '+',
          onPressed: (value) {
            controller.setOperation(value);
            controller.getValue();
          },
          isNumberValue: false,
          backgroundColor: const Color.fromARGB(255, 45, 120, 157),
          textColor: Colors.white,
        ),
        CalculatorButton(
          text: '0',
          onPressed: (value) {
            controller.setDisplay(value);
          },
          isNumberValue: true,
          textColor: const Color.fromARGB(255, 45, 120, 157),
        ),
        CalculatorButton(
          text: '.',
          onPressed: (value) {
            controller.setDisplay(value);
          },
          isNumberValue: false,
        ),
        CalculatorButton(
          text: '<=',
          onPressed: (value) {
            controller.clearLast();
          },
          isNumberValue: false,
          textColor: Colors.blueGrey,
        ),
        CalculatorButton(
          text: '=',
          onPressed: (value) {
            controller.getValue();
          },
          isNumberValue: false,
          backgroundColor: Colors.orange,
          textColor: Colors.white,
        ),
      ],
    );
  }
}
