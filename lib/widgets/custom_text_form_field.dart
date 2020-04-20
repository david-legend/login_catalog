import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logincatalog/values/values.dart';

class CustomTextFormField extends StatelessWidget {
  final TextStyle textFormFieldStyle;
  final TextStyle hintTextStyle;
  final BorderStyle borderStyle;
  final double borderWidth;
  final Widget prefixIcon;
  final String hintText;
  final Color borderColor;
  final Color focusedBorderColor;
  final Color disabledBorderColor;
  final bool obscured;
  final bool hasPrefixIcon;
  final TextInputType textInputType;
  ValueChanged<String> onChanged;
  FormFieldValidator<String> validator;
  List<TextInputFormatter> inputFormatters;

  CustomTextFormField({
    this.prefixIcon,
    this.textFormFieldStyle,
    this.hintTextStyle,
    this.borderStyle = BorderStyle.solid,
    this.borderWidth = Sizes.WIDTH_2,
    this.hintText,
    this.borderColor = AppColors.white,
    this.focusedBorderColor = AppColors.violetShade1,
    this.disabledBorderColor = AppColors.white,
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
        style: textFormFieldStyle,
        keyboardType: textInputType,
        onChanged: onChanged,
        validator: validator,
        inputFormatters: inputFormatters,
        decoration: InputDecoration(
          border: UnderlineInputBorder(
            borderSide: BorderSide(
              color: borderColor,
              width: borderWidth,
              style: borderStyle,
            ),
          ),
          disabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: disabledBorderColor,
              width: borderWidth,
              style: borderStyle,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: focusedBorderColor,
              width: borderWidth,
              style: borderStyle,
            ),
          ),
          prefixIcon: hasPrefixIcon ? prefixIcon : null,
//          contentPadding: EdgeInsets.symmetric(
//            horizontal: contentPaddingHorizontal,
//            vertical: contentPaddingVertical,
//          ),
          hintText: hintText,
          hintStyle: hintTextStyle,
        ),
        obscureText: obscured,
      ),
    );
  }
}
