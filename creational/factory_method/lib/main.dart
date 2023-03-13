import 'package:device_preview/device_preview.dart';
import 'package:factory_method/platform_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Builder(builder: (context) {
          return Center(
            child: PlatformButton(Theme.of(context).platform).build(
              context: context,
              child: Text(
                Theme.of(context).platform.toString(),
                style: const TextStyle(color: Colors.black),
              ),
              onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Factory method"))),
            ),
          );
        }),
      ),
    );
  }
}
