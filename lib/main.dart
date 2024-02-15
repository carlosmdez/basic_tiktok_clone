import 'package:flutter/material.dart';
import 'package:tok_tik/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TokTik',
      theme: AppTheme().getTheme(),
      home: Scaffold(
        appBar: AppBar(title: const Text('TokTik')),
        body: const Center(
          child: Text('Welcome to TokTik'),
        ),
      ),
    );
  }
}
