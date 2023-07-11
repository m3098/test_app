import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'features/features.dart';
import 'features/home/bloc/app_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppBloc(),
      child: MaterialApp(
        theme: ThemeData.dark(),
        routes: {"/home": (context) => const HomeScreen()},
        initialRoute: "/home",
      ),
    );
  }
}
