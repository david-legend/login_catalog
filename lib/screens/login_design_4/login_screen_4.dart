import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
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
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
            SpaceH12(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  StringConst.REMEMBER_ME,
                  style: theme.textTheme.subtitle.copyWith(
                    color: AppColors.blackShade10,
                    fontSize: Sizes.TEXT_SIZE_14,
                  ),
                ),
                Text(
                  StringConst.FORGOT_PASSWORD,
                  style: theme.textTheme.subtitle.copyWith(
                    color: AppColors.blackShade10,
                    fontSize: Sizes.TEXT_SIZE_14,
                  ),
                ),
              ],
            ),
            SpaceH20(),
            Container(
              width: 180,
              child: CustomButton(
                title: StringConst.LOG_IN,
                elevation: Sizes.ELEVATION_12,
                textStyle: theme.textTheme.subtitle.copyWith(
                  color: AppColors.white, fontWeight: FontWeight.w600,
//                  fontSize: Sizes.TEXT_SIZE_14,
                ),
                color: AppColors.blue,
                height: 40,
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
