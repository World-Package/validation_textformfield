<!-- 
# Validation TextFromfield 

flutter textfield validation lets you validate different textform fields in your Flutter app.
-->

## Installation
1. Add the latest version of package to your pubspec.yaml (and run`dart pub get`):

```yaml
dependencies:
  validation_textformfield: Update version
```
2. Import the package and use it in your Flutter App.
```dart
import 'package:validation_textformfield/validation_textformfield.dart';
    
``````````````



A Flutter package for launching a Validation TextFormField . Supports
iOS, Android, web, Windows, macOS, and Linux.

# Example

```dart

EmailValidationTextField(
 whenTextFieldEmpty: "Please enter  email",
 validatorMassage: "Please enter valid email",
 decoration: InputDecoration(
 focusedBorder: OutlineInputBorder(
 borderSide: BorderSide(color: Colors.black, width: 0.5),
),
 enabledBorder: OutlineInputBorder(
 borderSide: BorderSide(color: Colors.black, width: 0.5),
),
 border: OutlineInputBorder(),
 counterText: '',
 hintStyle: TextStyle(color: Colors.black, fontSize: 18.0)),
 textEditingController: txtEmailCtrl,
)
```
See the example app for more complex examples.
# Image

![Email](https://user-images.githubusercontent.com/99797282/154927464-add2b611-27b3-49cf-8e5f-6fba74e0239c.gif)


# Getting Started

For help getting started with Flutter, view our online
[documentation](https://flutter.dev/).