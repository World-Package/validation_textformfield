import 'package:flutter/material.dart';

class PassWordValidationTextFiled extends StatefulWidget {
  final int passwordMaxLength;
  final int passwordMinLength;
  static String? passwordText;
  final bool lineIndicator;
  final TextEditingController? passTextEditingController;
  final bool? obscureText;
  final String? validatorMassage;
  final String? hasPasswordEmpty;
  final InputDecoration? decoration;
  final TextStyle? style;
  final TextInputType? keyboardType;
  final bool? autoCorrect;
  final String? obscuringCharacter;
  final bool? readOnly;
  final bool? showCursor;
  final Function? onChanged;
  final bool? expands;
  final String? passwordMinError;
  final String? passwordMaxError;
  final String? passWordUpperCaseError;
  final String? passWordDigitsCaseError;
  final String? passwordLowercaseError;
  final String? passWordSpecialCharacters;
  final Function? onSaved;
  final Function? onTap;
  final int? maxLength;
  final EdgeInsets? scrollPadding;
  final Brightness? keyboardAppearance;
  final Color? cursorColor;
  final bool? enableSuggestions;
  final double? cursorHeight;
  final Color? lineIndicatorBackgroundColor;
  final Radius? cursorRadius;
  final double? cursorWidth;
  final TextInputAction? textInputAction;
  const PassWordValidationTextFiled(
      {Key? key,
        this.textInputAction,
        required this.passwordMinLength,
        required this.lineIndicator,
        required this.passwordMaxLength,
        this.passwordLowercaseError,
        this.lineIndicatorBackgroundColor,
        this.style,
        this.passwordMinError,
        this.passwordMaxError,
        this.maxLength,
        this.passWordDigitsCaseError,
        this.scrollPadding,
        this.obscuringCharacter,
        this.passWordSpecialCharacters,
        this.onSaved,
        this.expands,
        this.obscureText,
        this.enableSuggestions,
        this.onTap,
        this.hasPasswordEmpty,
        this.passWordUpperCaseError,
        this.cursorHeight,
        this.cursorRadius,
        this.cursorWidth,
        this.cursorColor,
        this.keyboardAppearance,
        this.readOnly,
        this.onChanged,
        this.showCursor,
        this.autoCorrect,
        this.keyboardType,
        this.decoration,
        this.passTextEditingController,
        this.validatorMassage})
      : super(key: key);

  @override
  State<PassWordValidationTextFiled> createState() =>
      _PassWordValidationTextFiledState();
}

class _PassWordValidationTextFiledState
    extends State<PassWordValidationTextFiled> {
  double _strength = 0;
  String _displayText = '';
  late String _password;
  late String _psss;
  // final RegExp PasswordRegex = new RegExp(
  //     r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  bool ind = false;
  final RegExp hasUppercase = RegExp(r'[A-Z]');
  final RegExp hasDigits = RegExp(r'[0-9]');
  final RegExp hasLowercase = RegExp(r'[a-z]');
  final RegExp hasSpecialCharacters = RegExp(r'[!@#$%^&*(),.?":{}|<>]');
  _checkPassword(String value) {
    _password = value.trim();

    if (_password.isEmpty) {
      setState(() {
        _strength = 0;
        _displayText = widget.hasPasswordEmpty!;
      });
    } else if (_password.length < widget.passwordMinLength.toInt()) {
      setState(() {
        _strength = 1 / 4;
        _displayText = widget.passwordMinError!;
      });
    }
    else
    if (!hasDigits.hasMatch(_password)) {
      setState(() {
        // Password length >= 8
        // But doesn't contain both letter and digit characters
        _strength = 3 / 4;
        _displayText = widget.passWordDigitsCaseError!;
      });
    }
    else if (!hasLowercase.hasMatch(_password)) {
      setState(() {
        // Password length >= 8
        // But doesn't contain both letter and digit characters
        _strength = 3 / 4;
        _displayText = widget.passwordLowercaseError!;
      });
    }
    else if (!hasUppercase.hasMatch(_password) ) {
      setState(() {
        // Password length >= 8
        // But doesn't contain both letter and digit characters
        _strength = 3 / 4;
        _displayText = widget.passWordUpperCaseError!;
      });
    }
    else if (!hasSpecialCharacters.hasMatch(_password)) {
      setState(() {
        // Password length >= 8
        // But doesn't contain both letter and digit characters
        _strength = 3 / 4;
        _displayText = widget.passWordSpecialCharacters!;
      });
    }
    else if (_password.length > widget.passwordMaxLength.toInt()) {
      setState(() {
        _strength = 3 / 4;
        // _strength = 2 / 4;
        _displayText = widget.passwordMaxError!;
      });
    }


    else {
      // Password length >= 8
      // Password contains both letter and digit characters
      setState(() {
        _strength = 1;
        _displayText = 'Your password is great';
      });
    }

  }

  _passValidation(String value) {
    _psss = value.trim();
    if (_psss.isEmpty) {


      // _strength = 0;

      return widget.hasPasswordEmpty;
    } else if (value.length < widget.passwordMinLength.toInt()) {
      // _strength = 1 / 4;

      return widget.passwordMinError;
    } else if (value.length > widget.passwordMaxLength.toInt()) {
      // _strength = 2 / 4;

      return widget.passwordMaxError;
    } else if (!hasUppercase.hasMatch(value)) {
      // _strength = 3 / 4;

      return widget.passWordUpperCaseError;
    } else if (!hasDigits.hasMatch(value)) {
      // _strength = 3 / 4;

      return widget.passWordDigitsCaseError;
    } else if (!hasLowercase.hasMatch(value)) {
      // _strength = 3 / 4;

      return widget.passwordLowercaseError;
    } else if (!hasSpecialCharacters.hasMatch(value)) {
      // _strength = 3 / 4;

      return widget.passWordSpecialCharacters;
    } else {
      // _strength = 1;

      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          validator: (value) {
            return widget.lineIndicator ? null : _passValidation(value!);
            //  if (value == "") {
            //
            //      // _strength = 0;
            //
            //
            //    return widget.hasPasswordEmpty;
            //  }
            // else if (value!.length < widget.passwordMinLength!.toInt()) {
            //
            //     // _strength = 1 / 4;
            //
            //    return widget.passwordMinError;
            //  }
            //  else if (value.length > widget.passwordMaxLength!.toInt()) {
            //
            //      // _strength = 2 / 4;
            //
            //    return  widget.passwordMaxError;
            //  }
            //  else if (!hasUppercase.hasMatch(value)) {
            //
            //      // _strength = 3 / 4;
            //
            //    return widget.passWordUpperCaseError;
            //  }
            //  else if (!hasDigits.hasMatch(value)) {
            //
            //      // _strength = 3 / 4;
            //
            //    return widget.passWordDigitsCaseError;
            //  }
            //  else if(!hasLowercase.hasMatch(value)) {
            //
            //      // _strength = 3 / 4;
            //
            //    return widget.passwordLowercaseError;
            //  }
            //  else if (!hasSpecialCharacters.hasMatch(value)) {
            //
            //      // _strength = 3 / 4;
            //
            //    return  widget.passWordSpecialCharacters ;
            //  }
            //
            //  else{
            //
            //
            //     // _strength = 1;
            //
            //    return null;
            //  }
          },
          scrollPadding: widget.scrollPadding ?? EdgeInsets.all(00.0),
          maxLength: widget.maxLength,
          expands: widget.expands ?? false,
          enableSuggestions: widget.enableSuggestions ?? false,
          obscuringCharacter: widget.obscuringCharacter ?? "*",
          obscureText: widget.obscureText ?? false,

          onSaved: (value) {
            return widget.onSaved!(value);
          },

          textInputAction: widget.textInputAction,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          cursorHeight: widget.cursorHeight,
          cursorRadius: widget.cursorRadius,
          cursorWidth: widget.cursorWidth ?? 2,

          cursorColor: widget.cursorColor ?? Colors.black,

          keyboardAppearance: widget.keyboardAppearance,

          onChanged: (value) {
            // widget.lineIndicator?_passValidation(value);
            widget.lineIndicator ? _checkPassword(value) : false;

            setState(() {
              // pwdSetGet.passwordText = value;
            });
            return widget.onChanged!(value);
          },
          showCursor: widget.showCursor ?? true,
          readOnly: widget.readOnly ?? false,
          autocorrect: widget.autoCorrect ?? true,
          style: widget.style,
          keyboardType: widget.keyboardType,

          controller: widget.passTextEditingController,
          // obscureText: isSecure,
          decoration: widget.decoration,
        ),
        SizedBox(
          height: 8,
        ),
        widget.lineIndicator
            ? LinearProgressIndicator(
          value: _strength,
          backgroundColor:
          widget.lineIndicatorBackgroundColor ?? Colors.grey[300],
          color: _strength <= 1 / 4
              ? Colors.red
              : _strength == 2 / 4
              ? Colors.yellow
              : _strength == 3 / 4
              ? Colors.red
              : Colors.green,
          minHeight: 6,
        )
            : SizedBox(),
        SizedBox(
          height: 5,
        ),
        Text(
          _displayText,
        ),
      ],
    );
  }
}