import 'package:flutter/material.dart';

class ZLabel extends StatelessWidget {
  const ZLabel({super.key, required this.label});

  final String label;
  @override
  Widget build(BuildContext context) {
    return Text(label);
  }
}
