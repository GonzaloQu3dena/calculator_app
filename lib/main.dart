import 'package:calculator_app/calculator/screens/calculator_screen.dart';
import 'package:flutter/material.dart';

/// Main function of the app
/// 
/// This function is the entry point of the app
void main() {
  runApp(const MainApp());
}

/// MainApp class
/// 
/// This class is the root widget of the app
/// 
/// Gonzalo Quedena
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  /// Build method
  /// 
  /// This method builds the widget of the app
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const CalculatorScreen(),
    );
  }
}
