import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Platform-specific Icons'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Plattformabhängiges Icon
            PlatformIcon(),
          ],
        ),
      ),
    );
  }
}

class PlatformIcon extends StatelessWidget {
  const PlatformIcon({super.key});

  @override
  Widget build(BuildContext context) {
    if (Theme.of(context).platform == TargetPlatform.iOS) {
      // Cupertino-Icon für iOS
      return CupertinoButton(
        child: const Icon(CupertinoIcons.add),
        onPressed: () {
          // Aktion für das Icon
          print('Cupertino Icon wurde gedrückt');
        },
      );
    } else {
      // Material-Icon für andere Plattformen (Android)
      return IconButton(
        icon: const Icon(Icons.add),
        onPressed: () {
          // Aktion für das Icon
          print('Material Icon wurde gedrückt');
        },
      );
    }
  }
}
