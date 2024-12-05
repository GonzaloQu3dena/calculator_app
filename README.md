# My Calculator App

## Summary

My Calculator App is a simple and powerful calculator built with Flutter. It allows users to perform basic arithmetic operations such as addition, subtraction, multiplication, division, and more. The app has a user-friendly interface with custom buttons, and it also displays the history of calculations. This project demonstrates the usage of state management, reusable widgets, and mathematical expression evaluation in Flutter.

<p align="center">
  <img src="https://media.discordapp.net/attachments/1313723409972330536/1314026493583560756/calculator_app_evidence.png?ex=67524609&is=6750f489&hm=dec374e29d40046f53a4501160f64d9c46fa68c73888415e43372752bd863f93&=&format=webp&quality=lossless&width=317&height=701" alt="app-evidence" width="200"/>
</p>

## Features

Main features included in this project are:

- Performs basic arithmetic operations: addition, subtraction, multiplication, division, and percentage.
- Clear and all-clear functionality to reset the current expression.
- Customizable button widgets for a smooth user experience.
- Displays the history of previous expressions.
- Uses the `math_expressions` package for evaluating mathematical expressions.
- Styled with custom fonts using the `google_fonts` package for a modern look.

## Framework

This project was built using [Flutter](https://flutter.dev/) framework.

Key libraries and tools used in the project:
- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- [Material Design](https://material.io/develop/flutter) (for UI components)
- [math_expressions](https://pub.dev/packages/math_expressions) (for evaluating mathematical expressions)
- [google_fonts](https://pub.dev/packages/google_fonts) (for custom fonts)

## Development setup

To get started with the development of this project, follow these steps:

1. Clone the repository:
    ```bash
    git clone https://github.com/your-username/my_calculator_app.git
    ```

2. Navigate into the project directory:
    ```bash
    cd my_calculator_app
    ```

3. Install dependencies:
    ```bash
    flutter pub get
    ```

4. Run the app on an emulator or connected device:
    ```bash
    flutter run
    ```

The app will automatically reload if you make changes to any of the source files.

## Building the app

To build the project for release, run the following command:

```bash
flutter build apk
```

This will generate the APK file for Android. For iOS, you can use:
```bash
flutter build ios
```