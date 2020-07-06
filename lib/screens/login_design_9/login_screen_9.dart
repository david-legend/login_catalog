import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:logincatalog/bloc/theme_bloc.dart';
import 'package:logincatalog/layout/adaptive.dart';
import 'package:logincatalog/routes/router.gr.dart';
import 'package:logincatalog/themes/login_design_5_theme.dart';
import 'package:logincatalog/values/values.dart';
import 'package:logincatalog/widgets/custom_painters.dart';
import 'package:logincatalog/widgets/custom_shape_clippers.dart';
import 'package:logincatalog/widgets/custom_text_form_field.dart';
import 'package:logincatalog/widgets/spaces.dart';

class LoginScreen9 extends StatefulWidget {
  LoginScreen9({
    @required this.themeBloc,
  });

  final ThemeBloc themeBloc;

  @override
  _LoginScreen9State createState() => _LoginScreen9State();
}

class _LoginScreen9State extends State<LoginScreen9> {
  @override
  void initState() {
    super.initState();
    widget.themeBloc.selectedTheme.add(_buildLightTheme());
  }

  CurrentTheme _buildLightTheme() {
    return CurrentTheme('light', LoginDesign5Theme.lightThemeData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.deepBlue200,
      body: Container(
        child: Column(
          children: [
            _drawTearDrop(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: Sizes.PADDING_24),
              child: _buildForm(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _drawTearDrop() {
    double radius = assignWidth(context: context, fraction: 0.35);
    ThemeData theme = Theme.of(context);
    return Container(
      height: radius * 2,
      width: widthOfScreen(context),
      child: Stack(
        children: [
          Container(
            height: radius,
            width: radius,
            color: AppColors.orangeShade6,
            child: CustomPaint(
              painter: DrawCircle(
                offset: Offset(
                  radius,
                  radius,
                ),
                radius: radius,
                color: AppColors.orangeShade6,
              ),
            ),
          ),
          Container(
            width: radius * 2,
            padding: const EdgeInsets.only(left: Sizes.PADDING_16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  StringConst.GET_STARTED,
                  style: theme.textTheme.headline5.copyWith(
                    color: AppColors.white,
                  ),
                ),
                Text(
                  StringConst.LOGIN_MSG_2,
                  style: theme.textTheme.bodyText1.copyWith(
                    color: AppColors.white,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildForm() {
    ThemeData theme = Theme.of(context);
    TextStyle titleTextStyle = theme.textTheme.subtitle2.copyWith(
      color: AppColors.orangeShade6,
    );
    TextStyle hintTextStyle = theme.textTheme.bodyText1.copyWith(
      color: AppColors.indigo200,
    );
    UnderlineInputBorder customUnderlineInputBorder =
        Borders.customUnderlineInputBorder(
      color: AppColors.indigo200,
    );
    return Container(
      child: Column(
        children: [
          CustomTextFormField(
            hasTitle: true,
            titleStyle: titleTextStyle,
            title: StringConst.EMAIL,
            textStyle: hintTextStyle,
            hasPrefixIcon: true,
            prefixIcon: Icon(
              Icons.email,
              color: AppColors.orangeShade6,
              size: Sizes.ICON_SIZE_18,
            ),
            border: customUnderlineInputBorder,
            focusedBorder: customUnderlineInputBorder,
            enabledBorder: customUnderlineInputBorder,
            hintText: StringConst.EMAIL_HINT_TEXT,
            hintTextStyle: hintTextStyle,
          ),
          SpaceH8(),
          CustomTextFormField(
            hasTitle: true,
            title: StringConst.PASSWORD_2,
            titleStyle: titleTextStyle,
            textStyle: hintTextStyle,
            hasPrefixIcon: true,
            prefixIcon: Icon(
              FeatherIcons.key,
              color: AppColors.orangeShade6,
              size: Sizes.ICON_SIZE_18,
            ),
            obscured: true,
            border: customUnderlineInputBorder,
            focusedBorder: customUnderlineInputBorder,
            enabledBorder: customUnderlineInputBorder,
            hintText: StringConst.PASSWORD_HINT_TEXT,
            hintTextStyle: hintTextStyle,
          ),
          SpaceH16(),
          InkWell(
            onTap: () {
              ExtendedNavigator.ofRouter<Router>()
                  .pushNamed(Routes.signUpScreen9);
            },
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                StringConst.FORGOT_PASSWORD,
                style: titleTextStyle,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              StringConst.DONT_HAVE_AN_ACCOUNT,
              style: hintTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
