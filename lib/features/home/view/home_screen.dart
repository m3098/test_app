import 'package:flutter/material.dart';

import '../../../repositories/app_repository.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
          child:
              OutlinedButton(onPressed: () async {}, child: const Text("open")),
        ),
      ),
    );
  }
}
