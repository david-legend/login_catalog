import 'package:flutter/material.dart';
import 'package:logincatalog/bloc/theme_bloc.dart';
import 'package:logincatalog/themes/login_design_1_theme.dart';
import 'package:logincatalog/values/values.dart';
import 'package:logincatalog/widgets/clipShadowPath.dart';
import 'package:logincatalog/widgets/custom_button.dart';
import 'package:logincatalog/widgets/custom_painters.dart';
import 'package:logincatalog/widgets/custom_shape_clippers.dart';
import 'package:logincatalog/widgets/custom_text_form_field.dart';
import 'package:logincatalog/widgets/spaces.dart';

class RegisterScreen7 extends StatefulWidget {
  RegisterScreen7({@required this.themeBloc});

  final ThemeBloc themeBloc;

  @override
  _RegisterScreen7State createState() => _RegisterScreen7State();
}

class _RegisterScreen7State extends State<RegisterScreen7> {
  @override
  void initState() {
    super.initState();
    widget.themeBloc.selectedTheme.add(_buildLightTheme());
  }

  CurrentTheme _buildLightTheme() {
    return CurrentTheme('light', LoginDesign1Theme.lightThemeData);
  }

  @override
  Widget build(BuildContext context) {
    var heightOfScreen = MediaQuery.of(context).size.height;
    var widthOfScreen = MediaQuery.of(context).size.width;
    ThemeData theme = Theme.of(context);

    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: Stack(
          children: <Widget>[
//            ClipShadowPath(
//              clipper: LoginDesign7ShapeClipper1(),
//              shadow: Shadow(blurRadius: 12, color: AppColors.blue),
//              child: Container(
//                height: heightOfScreen * 0.2,
//                width: widthOfScreen,
//                color: AppColors.blue,
//
//              ),
//            ),
//            ClipShadowPath(
//              clipper: LoginDesign7ShapeClipper2(),
//              shadow: Shadow(blurRadius: 24, color: AppColors.blue),
//              child: Container(
//                height: heightOfScreen * 0.4,
//                width: widthOfScreen,
//                color: AppColors.blue,
//
//              ),
//            ),

            CustomPaint(
              painter: DrawCircle(
                offset: Offset(widthOfScreen * 0.2, heightOfScreen * 0.05),
                radius: widthOfScreen * 0.25,
                color: AppColors.violet,
                hasShadow: true,
                shadowColor: AppColors.violetShade1
              ),
            ),
            CustomPaint(
              painter: DrawCircle(
                offset: Offset(widthOfScreen * 0.75, heightOfScreen * 0.1),
                radius: widthOfScreen * 0.5,
                color: AppColors.violet,
                hasShadow: true,
                shadowColor: AppColors.violetShade1
              ),
            ),
            CustomPaint(
              painter: DrawCircle(
                offset: Offset(widthOfScreen * 0.1, heightOfScreen * 0.95),
                radius: widthOfScreen * 0.175,
                color: AppColors.violet,
                hasShadow: true,
                shadowColor: AppColors.violetShade1

              ),
            ),
            CustomPaint(
              painter: DrawCircle(
                offset: Offset(widthOfScreen * 0.35, heightOfScreen * 0.85),
                radius: widthOfScreen * 0.1,
                color: AppColors.violet,
                hasShadow: true,
                shadowColor: AppColors.violetShade1
              ),
            ),
//            ClipShadowPath(
//              clipper: LoginDesign7ShapeClipper3(),
//              shadow: Shadow(blurRadius: 24, color: AppColors.blue),
//              child: Container(
//                height: heightOfScreen,
//                width: widthOfScreen,
//                color: AppColors.blue,
//
//              ),
//            ),
//            Positioned(
//              child: ClipPath(
//                clipper: ReverseWaveShapeClipper(),
//                child: Container(
//                  height: heightOfScreen * 0.5,
//                  width: widthOfScreen,
//                  decoration: BoxDecoration(
//                    gradient: Gradients.curvesGradient3,
//                  ),
//                ),
//              ),
//            ),
          ],
        ),
      ),
    );
  }

  Widget tab() {
    ThemeData theme = Theme.of(context);
    return DefaultTabController(
      length: 2,
      child: Column(
        children: <Widget>[
          TabBar(
            labelStyle:
                theme.textTheme.subtitle1.copyWith(color: AppColors.redShade5),
            tabs: [
              Tab(text: StringConst.LOG_IN_2),
              Tab(text: StringConst.REGISTER),
            ],
          ),
          TabBarView(
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildLoginForm() {
    return ListView(
      shrinkWrap: true,
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
        CustomButton(
          title: StringConst.LOG_IN_2,
          onPressed: () {},
        )
      ],
    );
  }

  Widget _buildRegisterForm() {
    return ListView(
      shrinkWrap: true,
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
        SpaceH16(),
        CustomButton(
          title: StringConst.REGISTER,
          onPressed: () {},
        )
      ],
    );
  }
}
