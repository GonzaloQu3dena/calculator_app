import 'package:math_expressions/math_expressions.dart';

/// Calculator model
/// 
/// This class is responsible for handling the calculator logic.
/// 
/// Gonzalo Quedena
class Calculator {
  String history = "";
  String expression = "";

  /// Clear Expression
  /// 
  /// This method clears the expression.
  void clearExpression() {
    expression = "";
  }

  /// Clear All 
  /// 
  /// This method clears the history and the expression.
  void clearAll() {
    history = "";
    expression = "";
  }

  /// Append to Expression
  /// 
  /// This method appends the given text to the expression.
  void appendToExpression(String text) {
    expression += text;
  }

  /// Set History
  /// 
  /// This method sets the history to the given text.
  void setHistory(String text) {
    history = text;
  }

  /// Evaluate Expression
  /// 
  /// This method evaluates the expression and returns the result.
  String evaluateExpression() {
    try {
      Parser parser = Parser();
      Expression exp = parser.parse(expression);
      ContextModel contextModel = ContextModel();
      
      return exp.evaluate(EvaluationType.REAL, contextModel).toString();

    } catch(err) {
      return "Error";
    }
  }
}
