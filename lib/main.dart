import 'package:flutter/material.dart';
import 'package:movietrain/core/functions/check_firstpage.dart';
import 'package:movietrain/services/myservices.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MyServices.inti();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: checkPage());
  }
}
