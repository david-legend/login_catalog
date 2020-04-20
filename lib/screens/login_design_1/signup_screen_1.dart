import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:logincatalog/routes/router.gr.dart';
import 'package:logincatalog/values/values.dart';
import 'package:logincatalog/widgets/custom_button.dart';
import 'package:logincatalog/widgets/custom_divider.dart';
import 'package:logincatalog/widgets/custom_shape_clippers.dart';
import 'package:logincatalog/widgets/custom_text_form_field.dart';
import 'package:logincatalog/widgets/spaces.dart';

class SignUpScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var heightOfAppBar = 56.0;
    var heightOfScreen = MediaQuery.of(context).size.height - heightOfAppBar;
    var widthOfScreen = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.greyShade2,
        leading: IconButton(
          onPressed: () => Router.navigator.pushReplacementNamed(Routes.loginScreen1),
          icon: Icon(Icons.arrow_back_ios),
        ),
        elevation: Sizes.ELEVATION_0,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.settings), onPressed: () {})
        ],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: heightOfScreen,
            width: widthOfScreen,
            decoration: BoxDecoration(color: AppColors.pink),
          ),
          ClipPath(
            clipper: CustomSignUpShapeClipper2(),
            child: Container(
              height: heightOfScreen,
              decoration: BoxDecoration(color: AppColors.white),
            ),
          ),
          ClipPath(
            clipper: CustomSignUpShapeClipper1(),
            child: Container(
              height: heightOfScreen,
              decoration: BoxDecoration(color: AppColors.greyShade2),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: Sizes.MARGIN_36),
            child: Column(
              children: <Widget>[
                SizedBox(height: heightOfScreen * 0.2),
                ListBody(
                  children: <Widget>[
                    Text(
                      StringConst.SIGN_UP,
                      style: textTheme.headline.copyWith(
                        color: AppColors.blackShade2,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SpaceH8(),
                    Text(
                      StringConst.SIGN_UP_MSG,
                      style: textTheme.subtitle.copyWith(
                        color: AppColors.pinkShade1,
                        fontSize: Sizes.TEXT_SIZE_16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SpaceH20(),
                CustomTextFormField(
                  hasPrefixIcon: true,
                  textInputType: TextInputType.text,
                  hintText: StringConst.NAME,
                  hintTextStyle: Styles.hintTextStyle(),
                  prefixIcon: Icon(
                    FeatherIcons.user,
                    color: AppColors.blackShade4,
                    size: Sizes.ICON_SIZE_20,
                  ),
                ),
                SpaceH16(),
                CustomTextFormField(
                  hasPrefixIcon: true,
                  textInputType: TextInputType.emailAddress,
                  hintText: StringConst.EMAIL_ADDRESS,
                  hintTextStyle: Styles.hintTextStyle(),
                  prefixIcon: Icon(
                    FeatherIcons.mail,
                    color: AppColors.blackShade4,
                    size: Sizes.ICON_SIZE_20,
                  ),
                ),
                SpaceH16(),
                CustomTextFormField(
                  hasPrefixIcon: true,
                  textInputType: TextInputType.text,
                  hintText: StringConst.PASSWORD,
                  hintTextStyle: Styles.hintTextStyle(),
                  prefixIcon: Icon(
                    FeatherIcons.key,
                    color: AppColors.blackShade4,
                    size: Sizes.ICON_SIZE_20,
                  ),
                ),
                SpaceH24(),
                CustomButton(
                  title: StringConst.SIGN_ME_UP,
                  color: AppColors.blackShade5,
                  textStyle: textTheme.button,
                  onPressed: () {},
                ),
                SpaceH16(),
                InkWell(
                  onTap: () => Router.navigator.pushReplacementNamed(Routes.loginScreen1),
                  child: Text(
                    StringConst.ALREADY_HAVE_AN_ACCOUNT,
                    style: textTheme.subtitle.copyWith(
                      fontSize: Sizes.TEXT_SIZE_14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SpaceH8(),
                Text(
                  StringConst.NEED_HELP,
                  style: textTheme.subtitle.copyWith(
                    fontSize: Sizes.TEXT_SIZE_14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SpaceH2(),
                CustomDivider(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
//transform: Matrix4.translationValues(-12.0, 0.0, 0.0),
