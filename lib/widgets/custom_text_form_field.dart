import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logincatalog/values/values.dart';

class CustomTextFormField extends StatelessWidget {
  final TextStyle textStyle;
  final TextStyle hintTextStyle;
  final TextStyle labelStyle;
  final Widget prefixIcon;
  final String hintText;
  final String labelText;
  final bool obscured;
  final bool hasPrefixIcon;
  final TextInputType textInputType;
  final ValueChanged<String> onChanged;
  final FormFieldValidator<String> validator;
  final List<TextInputFormatter> inputFormatters;
  final InputBorder border;
  final InputBorder enabledBorder;
  final InputBorder focusedBorder;
  final double width;
  final double height;

  CustomTextFormField({
    this.prefixIcon,
    this.textStyle,
    this.hintTextStyle,
    this.labelStyle,
    this.border = Borders.primaryInputBorder,
    this.focusedBorder = Borders.focusedBorder,
    this.enabledBorder = Borders.enabledBorder,
    this.hintText,
    this.labelText,
    this.hasPrefixIcon = false,
    this.obscured = false,
    this.textInputType,
    this.onChanged,
    this.validator,
    this.inputFormatters,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: TextFormField(
        style: textStyle,
        keyboardType: textInputType,
        onChanged: onChanged,
        validator: validator,
        inputFormatters: inputFormatters,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: labelStyle,
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
