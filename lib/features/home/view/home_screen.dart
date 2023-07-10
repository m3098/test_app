import 'package:flutter/material.dart';

import '../../../repositories/app_repositpry.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
          child: OutlinedButton(
              onPressed: () async {
                await AppRepositroy().getClient();
              },
              child: const Text("open")),
        ),
      ),
    );
  }
}
