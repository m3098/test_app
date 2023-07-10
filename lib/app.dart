import 'package:flutter/material.dart';
import 'features/features.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      routes: {"/home": (context) => const HomeScreen()},
      initialRoute: "/home",
    );
  }
}
