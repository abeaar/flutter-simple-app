import 'package:flutter/material.dart';
import 'package:latihankuis/pages/login_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white, // Warna background seluruh app
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 44, 186, 205), // Warna AppBar
          foregroundColor: Colors.white, // Warna teks di AppBar
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(
                const Color.fromARGB(255, 44, 186, 205)), // Warna tombol
            foregroundColor: WidgetStatePropertyAll(
                const Color.fromARGB(255, 255, 255, 255)), // Warna teks tombol
          ),
        ),
      ),
      home: LoginPage(),
    );
  }
}
