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
```dart
 PassWordValidationTextFiled(

                    lineIndicator:false,
                    passwordMinError: "Must be more than 5 charater",
                    hasPasswordEmpty: "Password is Empty",
                    passwordMaxError: "Password to long",
                    passWordUpperCaseError:
                        "at least one Uppercase (Capital)lette",
                    passWordDigitsCaseError: "at least one digit",
passwordLowercaseError: "at least one lowercase character",
passWordSpecialCharacters: "at least one Special Characters",

                    obscureText: _isObscure,
                    scrollPadding: EdgeInsets.only(left: 60),
                    onChanged: (value) {
                      // print(value);
                    },
                    passTextEditingController: txtPasswordCtrl,
                     passwordMaxLength: 10,
                    passwordMinLength: 5,
                    // validatorMassage: "Please enter valid Password",
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isObscure ? Icons.visibility : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 0.5),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 0.5),
                        ),
                        border: OutlineInputBorder(),
                        counterText: '',
                        hintStyle:
                            TextStyle(color: Colors.black, fontSize: 18.0)),
                  ),
```

See the example app for more complex examples.
# Image

![Email](https://user-images.githubusercontent.com/99797282/154927464-add2b611-27b3-49cf-8e5f-6fba74e0239c.gif)

![BasicPassword](https://user-images.githubusercontent.com/99797282/156554838-c3df51c0-e849-4adc-9366-2af6f1c4b12b.gif)

![passwordLiner](https://user-images.githubusercontent.com/99797282/156554848-f9d4b824-3edd-4fe2-96e4-93035f118d6d.gif)

# Getting Started

For help getting started with Flutter, view our online
[documentation](https://flutter.dev/).