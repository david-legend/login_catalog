import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logincatalog/values/values.dart';

class CustomTextFormField extends StatelessWidget {
  final TextStyle textStyle;
  final TextStyle hintTextStyle;
  final Widget prefixIcon;
  final String hintText;
  final bool obscured;
  final bool hasPrefixIcon;
  final TextInputType textInputType;
  ValueChanged<String> onChanged;
  FormFieldValidator<String> validator;
  List<TextInputFormatter> inputFormatters;
  UnderlineInputBorder border;
  UnderlineInputBorder enabledBorder;
  UnderlineInputBorder focusedBorder;

  CustomTextFormField({
    this.prefixIcon,
    this.textStyle,
    this.hintTextStyle,
    this.border = Borders.primaryInputBorder,
    this.focusedBorder = Borders.focusedBorder,
    this.enabledBorder = Borders.enabledBorder,
    this.hintText,
    this.hasPrefixIcon = false,
    this.obscured = false,
    this.textInputType,
    this.onChanged,
    this.validator,
    this.inputFormatters,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        style: textStyle,
        keyboardType: textInputType,
        onChanged: onChanged,
        validator: validator,
        inputFormatters: inputFormatters,
        decoration: InputDecoration(
          border: border,
          enabledBorder: enabledBorder,
          focusedBorder: focusedBorder,
          prefixIcon: hasPrefixIcon ? prefixIcon : null,
          hintText: hintText,
          hintStyle: hintTextStyle,
        ),
        obscureText: obscured,
      ),
    );
  }
}
