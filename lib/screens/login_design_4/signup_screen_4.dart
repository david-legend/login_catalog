import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:logincatalog/values/values.dart';
import 'package:logincatalog/widgets/custom_button.dart';
import 'package:logincatalog/widgets/custom_text_form_field.dart';
import 'package:logincatalog/widgets/spaces.dart';

class SignUpScreen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            CustomTextFormField(
              textInputType: TextInputType.text,
              labelText: StringConst.USER_NAME,
              border: Borders.customOutlineInputBorder(),
              enabledBorder: Borders.customOutlineInputBorder(),
              focusedBorder: Borders.customOutlineInputBorder(),
              labelStyle: Styles.customTextStyle(),
              hintTextStyle: Styles.customTextStyle(),
              textStyle: Styles.customTextStyle(),
            ),
            SpaceH20(),
            CustomTextFormField(
              textInputType: TextInputType.text,
              labelText: StringConst.EMAIL_ADDRESS,
              border: Borders.customOutlineInputBorder(),
              enabledBorder: Borders.customOutlineInputBorder(),
              focusedBorder: Borders.customOutlineInputBorder(),
              labelStyle: Styles.customTextStyle(),
              hintTextStyle: Styles.customTextStyle(),
              textStyle: Styles.customTextStyle(),
            ),
            SpaceH20(),
            CustomTextFormField(
              textInputType: TextInputType.text,
              labelText: StringConst.PASSWORD,
              obscured: true,
              hasSuffixIcon: true,
              suffixIcon: Icon(
                FeatherIcons.lock,
                color: AppColors.blackShade10,
              ),
              border: Borders.customOutlineInputBorder(),
              enabledBorder: Borders.customOutlineInputBorder(),
              focusedBorder: Borders.customOutlineInputBorder(),
              labelStyle: Styles.customTextStyle(),
              hintTextStyle: Styles.customTextStyle(),
              textStyle: Styles.customTextStyle(),
            ),
            SpaceH16(),
            Row(
              children: <Widget>[
                Text(
                  StringConst.ACCEPT_TERMS,
                  style: theme.textTheme.subtitle.copyWith(
                    color: AppColors.blackShade10,
                    fontSize: Sizes.TEXT_SIZE_14,
                  ),
                ),
              ],
            ),
            Container(
              width: 180,
              child: CustomButton(
                title: StringConst.SIGN_UP,
                elevation: Sizes.ELEVATION_12,
                textStyle: theme.textTheme.subtitle.copyWith(
                  color: AppColors.white,
                  fontWeight: FontWeight.w600,
                ),
                color: AppColors.blue,
                height: 40,
                onPressed: () {},
              ),
            ),
            SpaceH20(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FloatingActionButton(
                  backgroundColor: AppColors.twitterBlue,
                  onPressed: () {},
                  mini: true,
                  child: Icon(FeatherIcons.twitter),
                  heroTag: "twitter",
                ),
                SpaceW16(),
                FloatingActionButton(
                  backgroundColor: AppColors.googleRed,
                  onPressed: () {},
                  mini: true,
                  child: Icon(FontAwesomeIcons.google),
                  heroTag: "google",
                ),
                SpaceW16(),
                FloatingActionButton(
                  backgroundColor: AppColors.linkedInBlue,
                  onPressed: () {},
                  mini: true,
                  child: Icon(FeatherIcons.linkedin),
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
