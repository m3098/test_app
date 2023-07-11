import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:test_app/app.dart';
import 'package:test_app/repositories/app_repository.dart';

void main() {
  GetIt.I.registerLazySingleton(() => AppRepositroy());
  const app = MyApp();
  runApp(app);
}
