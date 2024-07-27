import 'package:flutter/material.dart';

class ZElevatedButton extends StatelessWidget {
  const ZElevatedButton({super.key, required this.onPressed, required this.label});

  final VoidCallback onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: Text(label));
  }
}
