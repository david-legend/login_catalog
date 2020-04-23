import 'package:flutter/material.dart';
import 'package:logincatalog/bloc/theme_bloc.dart';
import 'package:logincatalog/themes/login_design_2_theme.dart';
import 'package:logincatalog/values/values.dart';
import 'package:logincatalog/widgets/custom_button.dart';
import 'package:logincatalog/widgets/custom_text_form_field.dart';
import 'package:logincatalog/widgets/spaces.dart';

class SignUpScreen2 extends StatefulWidget {
  SignUpScreen2({@required this.themeBloc});

  final ThemeBloc themeBloc;

  @override
  _SignUpScreen2State createState() => _SignUpScreen2State();
}

class _SignUpScreen2State extends State<SignUpScreen2> {
  @override
  void initState() {
    super.initState();
//    widget.themeBloc.selectedTheme.add(_buildLightTheme());
  }

  CurrentTheme _buildLightTheme() {
    return CurrentTheme('light', LoginDesign2Theme.lightThemeData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      backgroundColor: AppColors.pinkShade2,
      body: ListView(
        children: <Widget>[
          Text(
            StringConst.REGISTER,
            textAlign: TextAlign.center,
            style: TextStyle(color: AppColors.blackShade6),
          ),
          _buildForm(),
          Row(
            children: <Widget>[
              Text(StringConst.ALREADY_REGISTERED,
                  style: TextStyle(color: AppColors.blackShade6)),
              Text(StringConst.LOG_IN,
                  style: TextStyle(color: AppColors.blackShade6)),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildForm() {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            CustomTextFormField(
              width: 100,
              textInputType: TextInputType.text,
              hintText: StringConst.FIRST_NAME,
              hintTextStyle:
                  Styles.customTextStyle(color: AppColors.blackShade6),
              textStyle: Styles.customTextStyle(color: AppColors.blackShade6),
            ),
            SpaceW8(),
            CustomTextFormField(
              width: 100,
              textInputType: TextInputType.text,
              hintText: StringConst.LAST_NAME,
              hintTextStyle:
                  Styles.customTextStyle(color: AppColors.blackShade6),
              textStyle: Styles.customTextStyle(color: AppColors.blackShade6),
            ),
          ],
        ),
        CustomTextFormField(
          textInputType: TextInputType.text,
          hintText: StringConst.EMAIL_ADDRESS,
          hintTextStyle: Styles.customTextStyle(color: AppColors.blackShade6),
          textStyle: Styles.customTextStyle(color: AppColors.blackShade6),
        ),
        CustomTextFormField(
          textInputType: TextInputType.text,
          hintText: StringConst.PASSWORD,
          hintTextStyle: Styles.customTextStyle(color: AppColors.blackShade6),
          textStyle: Styles.customTextStyle(color: AppColors.blackShade6),
        ),
        SpaceH16(),
        CustomButton(
          title: StringConst.REGISTER,
          color: AppColors.pinkShade2,
          onPressed: () {},
        ),
        SpaceH16(),
        Text(StringConst.OR),
        CustomButton(title: StringConst.REGISTER_WITH_GOOGLE),
      ],
    );
  }
}
