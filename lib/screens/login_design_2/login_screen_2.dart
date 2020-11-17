import 'package:flutter/material.dart' hide Router;
import 'package:logincatalog/bloc/theme_bloc.dart';
import 'package:logincatalog/routes/router.gr.dart';
import 'package:logincatalog/themes/login_design_2_theme.dart';
import 'package:logincatalog/values/values.dart';
import 'package:logincatalog/widgets/custom_button.dart';
import 'package:logincatalog/widgets/custom_divider.dart';
import 'package:logincatalog/widgets/custom_text_form_field.dart';
import 'package:logincatalog/widgets/spaces.dart';

class LoginScreen2 extends StatefulWidget {
  LoginScreen2({@required this.themeBloc});

  ThemeBloc themeBloc;
  @override
  _LoginScreen2State createState() => _LoginScreen2State();
}

class _LoginScreen2State extends State<LoginScreen2> {
  @override
  void initState() {
    super.initState();
    widget.themeBloc.selectedTheme.add(_buildLightTheme());
  }

  CurrentTheme _buildLightTheme() {
    return CurrentTheme('light', LoginDesign2Theme.lightThemeData);
  }

  @override
  Widget build(BuildContext context) {
    var heightOfScreen = MediaQuery.of(context).size.height;
    var textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: SafeArea(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: Sizes.MARGIN_16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                SizedBox(height: heightOfScreen * 0.15),
                Expanded(
                  child: Center(
                    child: ListView(
                      children: <Widget>[
                        Text(
                          StringConst.SIGN_IN,
                          textAlign: TextAlign.center,
                          style: textTheme.headline,
                        ),
                        SpaceH20(),
                        _buildForm()
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => Router.navigator.pushNamed(Routes.signUpScreen2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        StringConst.DONT_HAVE_AN_ACCOUNT,
                        style: textTheme.body1.copyWith(
                            color: AppColors.blackShade9,
                            fontWeight: FontWeight.w600,
                        )
                      ),
                      SpaceW16(),
                      Text(
                        StringConst.REGISTER,
                        style: textTheme.body1.copyWith(
                          color: AppColors.lightBlue,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                SpaceH20(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildForm() {
    var textTheme = Theme.of(context).textTheme;
    return Column(
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
          labelText: StringConst.PASSWORD,
          obscured: true,
          border: Borders.outlineBorder,
          enabledBorder: Borders.outlineEnabledBorder,
          focusedBorder: Borders.outlineFocusedBorder,
          labelStyle: Styles.customTextStyle2(),
          hintTextStyle: Styles.customTextStyle2(),
          textStyle: Styles.customTextStyle2(),
        ),
        SpaceH8(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text(
              StringConst.FORGOT_PASSWORD,
              style: textTheme.body1.copyWith(
                color: AppColors.lightBlue,
              ),
            ),
          ],
        ),
        SpaceH20(),
        CustomButton(
          title: StringConst.SIGN_IN,
          textStyle: textTheme.title.copyWith(color: AppColors.white),
          color: AppColors.pinkShade2,
          onPressed: () {},
        ),
        SpaceH16(),
        _buildSeparator(),
        SpaceH16(),
        CustomButton(
          title: StringConst.SIGN_IN_WITH_GOOGLE,
          textStyle: textTheme.title,
          hasIcon: true,
          color: AppColors.white,
          onPressed: () {},
          icon: Image.asset(
            ImagePath.GOOGLE_LOGO,
            height: Sizes.HEIGHT_25,
            width: Sizes.WIDTH_25,
          ),
        ),
      ],
    );
  }

  Widget _buildSeparator() {
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
