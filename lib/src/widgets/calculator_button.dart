import 'package:flutter/material.dart';

class CalculatorButton extends StatefulWidget {
  final String text;
  final Function(String) onPressed;
  final bool isNumberValue;
  final Color? backgroundColor;
  final Color? textColor;

  const CalculatorButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.isNumberValue,
    this.backgroundColor,
    this.textColor,
  }) : super(key: key);

  @override
  State<CalculatorButton> createState() => _CalculatorButtonState();
}

class _CalculatorButtonState extends State<CalculatorButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => widget.onPressed(widget.text),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          widget.backgroundColor ?? Colors.white,
        ),
      ),
      child: Text(
        widget.text,
        style: TextStyle(
          color: widget.textColor ?? Colors.black,
        ),
      ),
    );
  }
}
