import 'package:flutter/material.dart';

import 'animated_containerdemo.dart';
import 'fadein_demo.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.grey[900],
        fontFamily: 'Georgia',
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 36.0,
            fontStyle: FontStyle.italic,
          ),
          bodyMedium: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Implicit Animations"),
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: ListView(
          children: [
            ListTile(
              title: const Text('Animations 1'),
              subtitle: const Text('Animate opacity'),
              trailing: const Icon(Icons.keyboard_arrow_right_sharp),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FadeInDemo(),
                  ),
                );
              },
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                    color: Color.fromARGB(255, 139, 143, 140), width: 3),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ListTile(
              title: const Text('Animations 2'),
              subtitle: const Text('Animate color, borderRadius, and margin'),
              trailing: const Icon(Icons.keyboard_arrow_right_sharp),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AnimatedContainerDemo(),
                  ),
                );
              },
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                    color: Color.fromARGB(255, 139, 143, 140), width: 3),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
