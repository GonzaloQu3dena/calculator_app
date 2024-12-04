import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;

  const CustomButton({super.key, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      enableFeedback: true,
      elevation: 5,
      shape: const StadiumBorder(),
      onPressed: onPressed,
      child: Text(
        label,
        style: const TextStyle(fontSize: 24),
      ),
    );
  }
}
