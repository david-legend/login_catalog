import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:logincatalog/values/values.dart';
import 'package:logincatalog/widgets/custom_button.dart';
import 'package:logincatalog/widgets/custom_text_form_field.dart';
import 'package:logincatalog/widgets/spaces.dart';

class SignUpScreen5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Text(StringConst.SIGN_UP.toUpperCase()),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: StringConst.ALREADY_HAVE_AN_ACCOUNT),
                  TextSpan(text: StringConst.LOG_IN_3),
                ],
              ),
            ),
            _buildForm(),
            CustomButton(
              title: StringConst.CONTINUE_WITH_FACEBOOK,
              hasIcon: true,
              icon: Icon(FeatherIcons.facebook),
              onPressed: () {},
            ),
            CustomButton(
              title: StringConst.SIGN_UP.toUpperCase(),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildForm() {
    return Column(
      children: <Widget>[
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
        SpaceH16(),
        CustomTextFormField(
          textInputType: TextInputType.text,
          hintTextStyle: Styles.customTextStyle(color: AppColors.white),
          textStyle: Styles.customTextStyle(color: AppColors.white),
          hintText: StringConst.EMAIL_ADDRESS,
        ),
      ],
    );
  }
}
