import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Custom button widget
/// 
/// This widget is used to create custom buttons for the calculator
/// 
/// Gonzalo Quedena
class CustomButton extends StatelessWidget {

  /// Button label
  final String label;
  /// Button background color
  final int bgColor;
  /// Button text size
  final double textSize;
  /// Button onPressed function
  final Function onPressed;

  /// Constructor
  /// 
  /// The constructor requires the following parameters:
  const CustomButton({
    super.key,
    this.textSize = 20,
    required this.label,
    this.bgColor = 0xFF21252B,
    required this.onPressed,
  });

  /// Build method
  /// 
  /// This method is used to build the widget for the button
  /// 
  /// params [BuildContext] context - The context of the widget
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: SizedBox(
        width: 65,
        height: 65,
        child: TextButton(
          onPressed: () => {onPressed(label)},
          style: TextButton.styleFrom(
            backgroundColor: Color(bgColor),
            foregroundColor: Colors.white,
            padding: const EdgeInsets.all(16.0),
            textStyle: const TextStyle(fontSize: 20),
          ),
          child: Text(
            label,
            style: GoogleFonts.rubik(
              textStyle: TextStyle(fontSize: textSize),
            ),
          ),
        ),
      ),
    );
  }
}
