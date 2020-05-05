import 'package:flutter/material.dart';
import 'package:logincatalog/values/values.dart';
import 'package:logincatalog/widgets/custom_button.dart';
import 'package:logincatalog/widgets/custom_text_form_field.dart';
import 'package:logincatalog/widgets/spaces.dart';

class LoginScreen4 extends StatefulWidget {
  @override
  _LoginScreen4State createState() => _LoginScreen4State();
}

class _LoginScreen4State extends State<LoginScreen4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            CustomTextFormField(
              textInputType: TextInputType.text,
              labelText: StringConst.EMAIL_ADDRESS,
              border: Borders.outlineBorder,
              enabledBorder: Borders.outlineEnabledBorder,
              focusedBorder: Borders.outlineFocusedBorder,
              labelStyle: Styles.customTextStyle2(),
              hintTextStyle: Styles.customTextStyle2(),
              textStyle: Styles.customTextStyle2(),
            ),
            SpaceH20(),
            CustomTextFormField(
              textInputType: TextInputType.text,
              labelText: StringConst.PASSWORD,
              obscured: true,
              border: Borders.outlineBorder,
              enabledBorder: Borders.outlineEnabledBorder,
              focusedBorder: Borders.outlineFocusedBorder,
              labelStyle: Styles.customTextStyle2(),
              hintTextStyle: Styles.customTextStyle2(),
              textStyle: Styles.customTextStyle2(),
            ),
            Row(
              children: <Widget>[
                Text(StringConst.REMEMBER_ME),
                Text(StringConst.FORGOT_PASSWORD),
              ],
            ),
            CustomButton(
              title: StringConst.LOG_IN,
              onPressed: (){},
            )
          ],
        ),
      ),
    );
  }
}
