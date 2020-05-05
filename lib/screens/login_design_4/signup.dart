import 'package:flutter/material.dart';
import 'package:logincatalog/values/values.dart';
import 'package:logincatalog/widgets/custom_button.dart';
import 'package:logincatalog/widgets/custom_text_form_field.dart';
import 'package:logincatalog/widgets/spaces.dart';

class SignUp4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
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
                Text(StringConst.FORGOT_PASSWORD),
              ],
            ),
            CustomButton(
              title: StringConst.SIGN_UP,
              onPressed: () {},
            ),

            Row(
              children: <Widget>[
                FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.transfer_within_a_station),
                  heroTag: "twitter",
                ),
                FloatingActionButton(
                  onPressed: () {},
                  child: Image.asset(
                    ImagePath.GOOGLE_LOGO,
                    height: Sizes.HEIGHT_24,
                    width: Sizes.WIDTH_24,
                  ),
                  heroTag: "google",
                ),
                FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.phonelink_erase),
                  heroTag: "linkedIn",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
