import 'package:flutter/material.dart';

class ZListCard extends StatelessWidget {

  const ZListCard(
      {super.key, required this.child, this.backgroundColor, });

  final Widget child;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF000000).withOpacity(0.08),
            blurRadius: 9,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Card(
        color: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(color: Colors.transparent, width: 2.0),
        ),
        child: child,
      ),
    );
  }
}
