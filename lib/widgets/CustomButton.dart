// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final Color color;
  final Color textColor;
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.child,
    required this.color,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(color),
        textStyle: MaterialStateProperty.all<TextStyle>(
          TextStyle(
            color: textColor,
          ),
        ),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
