import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logincatalog/values/values.dart';
import 'package:logincatalog/widgets/spaces.dart';

class CustomTextFormField extends StatelessWidget {
  final TextStyle textStyle;
  final TextStyle hintTextStyle;
  final TextStyle labelStyle;
  final TextStyle titleStyle;
  final Widget prefixIcon;
  final Widget suffixIcon;
  final String hintText;
  final String labelText;
  final String title;
  final bool obscured;
  final bool hasPrefixIcon;
  final bool hasSuffixIcon;
  final bool hasTitle;
  final TextInputType textInputType;
  final ValueChanged<String> onChanged;
  final FormFieldValidator<String> validator;
  final List<TextInputFormatter> inputFormatters;
  final InputBorder border;
  final InputBorder enabledBorder;
  final InputBorder focusedBorder;
  final double width;
  final double height;
  final EdgeInsetsGeometry contentPadding;

  CustomTextFormField({
    this.prefixIcon,
    this.suffixIcon,
    this.textStyle,
    this.hintTextStyle,
    this.labelStyle,
    this.titleStyle,
    this.title,
    this.contentPadding,
    this.hasTitle = false,
    this.border = Borders.primaryInputBorder,
    this.focusedBorder = Borders.focusedBorder,
    this.enabledBorder = Borders.enabledBorder,
    this.hintText,
    this.labelText,
    this.hasPrefixIcon = false,
    this.hasSuffixIcon = false,
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        hasTitle ? Text(title, style: titleStyle) : Container(),
        hasTitle ? SpaceH8()  : Container(),
        Container(
          width: width,
          height: height,
          child: TextFormField(
            style: textStyle,
            keyboardType: textInputType,
            onChanged: onChanged,
            validator: validator,
            inputFormatters: inputFormatters,
            decoration: InputDecoration(
              contentPadding: contentPadding,
              labelText: labelText,
              labelStyle: labelStyle,
              border: border,
              enabledBorder: enabledBorder,
              focusedBorder: focusedBorder,
              prefixIcon: hasPrefixIcon ? prefixIcon : null,
              suffixIcon: hasSuffixIcon ? suffixIcon : null,
              hintText: hintText,
              hintStyle: hintTextStyle,
            ),
            obscureText: obscured,
          ),
        ),
      ],
    );
  }
}
