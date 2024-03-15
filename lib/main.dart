import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'core/dependencies/dependency_init.dart';
import 'core/dependencies/hive_register.dart';
import 'firebase_options.dart';
import 'my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  configureDependencies();
  await HiveRegister.registerModels();
  runApp(MyApp());
}
