import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:test_app/app.dart';
import 'package:test_app/repositories/app_repository.dart';
import 'package:test_app/repositories/models/client_model.dart';
import 'package:test_app/repositories/models/project_info_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  GetIt.I.registerLazySingleton(() => AppRepositroy());

  await Firebase.initializeApp();
  const app = MyApp();
  runApp(app);
}
