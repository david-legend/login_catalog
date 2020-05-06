import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:logincatalog/values/values.dart';
import 'package:logincatalog/widgets/custom_button.dart';
import 'package:logincatalog/widgets/custom_text_form_field.dart';
import 'package:logincatalog/widgets/spaces.dart';

class LoginScreen5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Scaffold(
      body: Container(
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Text(
              StringConst.LOG_IN_3,
              style: theme.textTheme.headline.copyWith(
                color: AppColors.black,
                fontSize: 32,
              ),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: StringConst.DONT_HAVE_AN_ACCOUNT,
                    style: theme.textTheme.subtitle.copyWith(
                      color: AppColors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: StringConst.SIGN_UP.toUpperCase(),
                    style: theme.textTheme.subtitle.copyWith(
                      color: AppColors.pinkShade3,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            _buildForm(context),
            CustomButton(
              title: StringConst.LOGIN_WITH_FACEBOOK,
              color: AppColors.white,
              borderRadius: Sizes.RADIUS_4,
              hasIcon: true,
              textStyle: theme.textTheme.button
                  .copyWith(color: AppColors.facebookBlue),
              icon: Icon(
                FeatherIcons.facebook,
                color: AppColors.facebookBlue,
              ),
              onPressed: () {},
            ),
            SpaceH16(),
            CustomButton(
              title: StringConst.LOG_IN_3,
              borderRadius: Sizes.RADIUS_4,
              color: AppColors.redShade4,
              textStyle: theme.textTheme.button.copyWith(
                color: AppColors.white,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildForm(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Column(
      children: <Widget>[
        CustomTextFormField(
          hasTitle: true,
          title: "USER NAME",
          titleStyle: theme.textTheme.title
              .copyWith(color: AppColors.greyShade8, fontSize: 16),
          textInputType: TextInputType.text,
          hintTextStyle: Styles.customTextStyle(color: AppColors.white),
          enabledBorder: Borders.customUnderlineInputBorder(),
          focusedBorder:
              Borders.customUnderlineInputBorder(color: AppColors.pinkShade3),
          textStyle: Styles.customTextStyle(color: AppColors.white),
          hintText: StringConst.USER_NAME,
        ),
        SpaceH16(),
        CustomTextFormField(
          hasTitle: true,
          title: "PASSWORD",
          titleStyle: theme.textTheme.title
              .copyWith(color: AppColors.greyShade8, fontSize: 16),
          textInputType: TextInputType.text,
          hintTextStyle: Styles.customTextStyle(color: AppColors.white),
          enabledBorder: Borders.customUnderlineInputBorder(),
          focusedBorder:
              Borders.customUnderlineInputBorder(color: AppColors.pinkShade3),
          textStyle: Styles.customTextStyle(color: AppColors.white),
          hintText: StringConst.PASSWORD,
          obscured: true,
        ),
        SpaceH8(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text(
              StringConst.FORGOT_PASSWORD,
              style: theme.textTheme.title
                  .copyWith(color: AppColors.greyShade8, fontSize: 14),
            ),
          ],
        )
      ],
    );
  }
}
