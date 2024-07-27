import 'package:flutter/material.dart';
import 'package:zemingo_flutter/features/news_feed/presentation/screens/label_screen.dart';

class ZemingoApp extends StatelessWidget {
  const ZemingoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'news!',
      home: LabelScreen(),
    );
  }
}
