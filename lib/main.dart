import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:device_screen_recorder/device_screen_recorder.dart';
import 'package:flutter/material.dart';
import 'package:screen_recording_app/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AnimatedSplashScreen(
        splash: const Text("Screen Recorder"),
        nextScreen: const HomeScreen(),
      ),
    );
  }
}
