import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/diagnostics.dart';
import 'package:get/get.dart';

import 'CounterApp.dart';
import 'controller/AudioController.dart';
import 'homePage.dart';

void main() async {
  await WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  AudioController audioController = Get.put(AudioController());
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pizza App',
      theme: ThemeData(
        canvasColor: Colors.white,
        inputDecorationTheme: InputDecorationTheme(
            outlineBorder: BorderSide(color: Colors.white)),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.white,
        ),
        useMaterial3: true,
      ),
      home: HomePage(),
      // home: const LoginScreen(),
    );
  }
}
