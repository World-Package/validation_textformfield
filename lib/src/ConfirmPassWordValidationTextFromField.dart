import 'package:flutter/material.dart';


import '../model/connect.dart';

class ConfirmPassWordValidationTextFromField extends StatefulWidget  {
  //

  final TextEditingController? passtextEditingController;
  final TextEditingController? confirmtextEditingController;
  final bool? obscureText;
  final String? validatorMassage;
  final String? whenTextFieldEmpty;
  final InputDecoration? decoration;
  final TextStyle? style;
  final TextInputType? keyboardType;
  final bool? autocorrect;
  final String? obscuringCharacter;
  final bool? readOnly;
  final bool? showCursor;
  final Function? onChanged;
  final bool? expands;
  final Function? onSaved;
  final Function? onTap;
  final int? maxLength;
  final EdgeInsets? scrollPadding;
  final Brightness? keyboardAppearance;
  final Color? cursorColor;
  final bool? enableSuggestions;
  final double? cursorHeight;
  final Radius? cursorRadius;
  final double? cursorWidth;
  final TextInputAction? textInputAction;
  const ConfirmPassWordValidationTextFromField(

      {Key? key,
        this.textInputAction,
        this.style,
        this.maxLength,
        this.passtextEditingController,
        this.scrollPadding,
        this.obscuringCharacter,
        this.onSaved,
        this.expands,
        this.obscureText,
        this.enableSuggestions,
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
        this.confirmtextEditingController,
        this.validatorMassage})
      : super(key: key);

  @override
  State<ConfirmPassWordValidationTextFromField> createState() =>
      _ConfirmPassWordValidationTextFromFieldState();
}

class _ConfirmPassWordValidationTextFromFieldState
    extends State<ConfirmPassWordValidationTextFromField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
          return widget.onChanged!(value);
        },
        showCursor: widget.showCursor ?? true,
        readOnly: widget.readOnly ?? false,
        autocorrect: widget.autocorrect ?? true,
        style: widget.style,
        keyboardType: widget.keyboardType,

        controller: widget.confirmtextEditingController,
        // obscureText: isSecure,
        decoration: widget.decoration,

        // validator: (value) {
        //   if (value == "") {
        //     return widget.whenTextFieldEmpty;
        //   }
        //
        //   if (value !=
        //       PassWordValidationTextFromFiled().passtextEditingController)
        //     return widget.validatorMassage;
        //
        //   return null;
        // },
        validator: (value){
          if(value!.isEmpty)
            return widget.whenTextFieldEmpty;
          if(value !=PwdSetGet.passwordText)
            return widget.validatorMassage;
          return null;
        }
    );
  }
}