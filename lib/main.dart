import 'package:flutter/material.dart';
import 'package:zemingo_flutter/di.dart';
import 'package:zemingo_flutter/features/news_feed/presentation/app.dart';
import 'package:zemingo_flutter/features/news_feed/presentation/screens/label_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const GlobalProviders(child: ZemingoApp()));
}
