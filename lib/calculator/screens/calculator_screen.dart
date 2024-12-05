import 'package:calculator_app/calculator/models/calculator.dart';
import 'package:calculator_app/calculator/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Calculator Screen
/// 
/// This class is the main screen of the calculator app.
/// 
///  Gonzalo Quedena
class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

/// Calculator Screen State
/// 
/// This class is the state of the CalculatorScreen class.
/// 
/// Gonzalo Quedena
class _CalculatorScreenState extends State<CalculatorScreen> {

  /// Calculator instance
  late Calculator _calculator;

  /// Initialize the state
  @override
  void initState() {
    super.initState();
    _calculator = Calculator();
  }

  /// Handle button click
  /// 
  /// This method is called when a button is clicked.
  /// 
  /// params [String] text: The text of the button clicked.
  void _handleButtonClick(String text) {
    setState(() {
      _calculator.appendToExpression(text);
    });
  }

  /// Clear the expression
  /// 
  /// This method is called when the "C" button is clicked.
  /// 
  /// params [String] text: The text of the button clicked.
  void _clear(String text) {
    setState(() {
      _calculator.clearExpression();
    });
  }

  /// Clear the expression and history
  /// 
  /// This method is called when the "AC" button is clicked.
  /// 
  /// params [String] text: The text of the button clicked.
  void _allClear(String text) {
    setState(() {
      _calculator.clearAll();
    });
  }

  /// Evaluate the expression
  /// 
  /// This method is called when the "=" button is clicked.
  /// 
  /// params [String] text: The text of the button clicked.
  void _evaluate(String text) {
    setState(() {
      _calculator.setHistory(_calculator.expression);
      _calculator.expression = _calculator.evaluateExpression();
    });
  }

  /// Build the widget
  /// 
  /// This method builds the widget for the calculator screen.
  /// 
  /// params [BuildContext] context: The context of the widget. 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF283637),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              alignment: const Alignment(1.0, 1.0),
              child: Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Text(
                  _calculator.history,
                  style: GoogleFonts.rubik(
                    textStyle: const TextStyle(
                      fontSize: 24,
                      color: Color(0xFF545F61),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              alignment: const Alignment(1.0, 1.0),
              child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    _calculator.expression,
                    style: GoogleFonts.rubik(
                      textStyle: const TextStyle(
                        fontSize: 48,
                        color: Colors.white,
                      ),
                    ),
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  label: "AC",
                  onPressed: _allClear,
                  bgColor: 0xFF00BF45,
                ),
                CustomButton(
                  label: "C",
                  onPressed: _clear,
                  bgColor: 0xffE3303A,
                ),
                CustomButton(
                  label: "%",
                  onPressed: _handleButtonClick,
                ),
                CustomButton(
                  label: "/",
                  onPressed: _handleButtonClick,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  label: "7",
                  onPressed: _handleButtonClick,
                ),
                CustomButton(
                  label: "8",
                  onPressed: _handleButtonClick,
                ),
                CustomButton(
                  label: "9",
                  onPressed: _handleButtonClick,
                ),
                CustomButton(
                  label: "*",
                  onPressed: _handleButtonClick,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  label: "4",
                  onPressed: _handleButtonClick,
                ),
                CustomButton(
                  label: "5",
                  onPressed: _handleButtonClick,
                ),
                CustomButton(
                  label: "6",
                  onPressed: _handleButtonClick,
                ),
                CustomButton(
                  label: "-",
                  onPressed: _handleButtonClick,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  label: "1",
                  onPressed: _handleButtonClick,
                ),
                CustomButton(
                  label: "2",
                  onPressed: _handleButtonClick,
                ),
                CustomButton(
                  label: "3",
                  onPressed: _handleButtonClick,
                ),
                CustomButton(
                  label: "+",
                  onPressed: _handleButtonClick,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  label: ".",
                  onPressed: _handleButtonClick,
                ),
                CustomButton(
                  label: "0",
                  onPressed: _handleButtonClick,
                ),
                CustomButton(
                  label: "00",
                  onPressed: _handleButtonClick,
                ),
                CustomButton(
                  label: "=",
                  onPressed: _evaluate,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
