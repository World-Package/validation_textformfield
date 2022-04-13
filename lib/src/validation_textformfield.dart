import 'package:flutter/material.dart';

class EmailValidationTextField extends StatefulWidget {
  final TextEditingController? textEditingController;
  final String? validatorMassage;
  final String? whenTextFieldEmpty;
  final InputDecoration? decoration;
  final TextStyle? style;
  final TextInputType? keyboardType;
  final bool? autocorrect;
  final bool? readOnly;
  final bool? showCursor;
  final Function? onChanged;
  final Function? onSaved;
  final Function? onTap;
  final Brightness? keyboardAppearance;
  final Color? cursorColor;
  final double? cursorHeight;
  final Radius? cursorRadius;
  final double? cursorWidth;
  final TextInputAction? textInputAction;
  const EmailValidationTextField(
      {Key? key,
      this.textInputAction,
      this.style,
      this.onSaved,
      this.onTap,
      this.whenTextFieldEmpty,
      this.cursorHeight,
      this.cursorRadius,
      this.cursorWidth,
      this.cursorColor,
      this.keyboardAppearance,
      this.readOnly,
      this.onChanged,
      this.showCursor,
      this.autocorrect,
      this.keyboardType,
      this.decoration,
      this.textEditingController,
      this.validatorMassage})
      : super(key: key);

  @override
  State<EmailValidationTextField> createState() =>
      _EmailValidationTextFieldState();
}

class _EmailValidationTextFieldState extends State<EmailValidationTextField> {
  final RegExp emailRegex = RegExp(
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: (value) {
        // ignore: void_checks
        return widget.onSaved!(value);
      },
      onTap: () {},
      textInputAction: widget.textInputAction,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      cursorHeight: widget.cursorHeight,
      cursorRadius: widget.cursorRadius,
      cursorWidth: widget.cursorWidth ?? 2,
      cursorColor: widget.cursorColor ?? Colors.black,
      keyboardAppearance: widget.keyboardAppearance,
      onChanged: (value) {
        // ignore: void_checks
        return widget.onChanged!(value);
      },
      showCursor: widget.showCursor ?? true,
      readOnly: widget.readOnly ?? false,
      autocorrect: widget.autocorrect ?? true,
      style: widget.style,
      keyboardType: widget.keyboardType,
      validator: (value) {
        if (value == "") {
          return widget.whenTextFieldEmpty;
        }
        if (!emailRegex.hasMatch(value!)) {
          return widget.validatorMassage;
        }
        return null;
      },
      controller: widget.textEditingController,
      decoration: widget.decoration,
    );
  }
}
