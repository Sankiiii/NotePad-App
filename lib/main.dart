import 'package:flutter/material.dart';
import 'screens/note_pad_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Realistic NotePad',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        scaffoldBackgroundColor: Colors.grey[150],
        fontFamily: 'Cursive', // Use a handwritten-style font
      ),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      home: const NotePadScreen(),
    );
  }
}
