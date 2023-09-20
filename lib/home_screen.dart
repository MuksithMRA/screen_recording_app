import 'package:device_screen_recorder/device_screen_recorder.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String path = "Recording not Started";
  bool isStarted = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Home"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(path),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () async {
                if (isStarted) {
                  path = await DeviceScreenRecorder.stopRecordScreen() ?? "";
                  path = "Saved Path $path";
                } else {
                  isStarted = await DeviceScreenRecorder.startRecordScreen(
                          name: 'test') ??
                      false;
                  path = "Recording Started";
                }

                setState(() {});
              },
              child: Text(isStarted ? "Stop Recording" : "Start Recording"),
            ),
          ],
        ),
      ),
    );
  }
}
