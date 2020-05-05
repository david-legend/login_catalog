import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:logincatalog/values/values.dart';
import 'package:logincatalog/widgets/custom_button.dart';
import 'package:logincatalog/widgets/custom_divider.dart';
import 'package:logincatalog/widgets/custom_text_form_field.dart';
import 'package:logincatalog/widgets/spaces.dart';

class LoginScreen8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var heightOfScreen = MediaQuery.of(context).size.height;
    var widthOfScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Positioned(
              child: Image.asset(
                ImagePath.LOGIN_2,
                height: heightOfScreen,
                width: widthOfScreen,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildForm(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(StringConst.LOG_IN_2),
        Text(StringConst.LOGIN_MSG),
        SpaceH16(),
        CustomTextFormField(
          textInputType: TextInputType.text,
          hintTextStyle: Styles.customTextStyle(color: AppColors.white),
          textStyle: Styles.customTextStyle(color: AppColors.white),
          hintText: StringConst.USER_NAME,
        ),
        SpaceH16(),
        CustomTextFormField(
          textInputType: TextInputType.text,
          hintTextStyle: Styles.customTextStyle(color: AppColors.white),
          textStyle: Styles.customTextStyle(color: AppColors.white),
          hintText: StringConst.PASSWORD,
          obscured: true,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[Text(StringConst.FORGOT_PASSWORD)],
        ),
        CustomButton(
          title: StringConst.LOG_IN_2,
          onPressed: () {},
        ),
        _buildSeparator(context),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            CustomButton(
              title: StringConst.FACEBOOK,
              hasIcon: true,
              icon: Icon(FeatherIcons.facebook),
              onPressed: () {},
            ),
            CustomButton(
              title: StringConst.GOOGLE,
              hasIcon: true,
              icon: Image.asset(
                ImagePath.GOOGLE_LOGO,
                height: Sizes.HEIGHT_24,
                width: Sizes.WIDTH_24,
              ),
              onPressed: () {},
            )
          ],
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(text: StringConst.DONT_HAVE_AN_ACCOUNT),
              TextSpan(
                text: StringConst.REGISTER,
                style: TextStyle(
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSeparator(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: Sizes.MARGIN_16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(child: CustomDivider(color: AppColors.black),),
          SpaceW8(),
          Text(StringConst.OR, style: textTheme.title),
          SpaceW8(),
          Expanded(child: CustomDivider(color: AppColors.black)),
        ],
      ),
    );
  }
}
