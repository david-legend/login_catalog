import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:logincatalog/routes/router.gr.dart';
import 'package:logincatalog/values/values.dart';
import 'package:logincatalog/widgets/custom_button.dart';
import 'package:logincatalog/widgets/custom_divider.dart';
import 'package:logincatalog/widgets/custom_shape_clippers.dart';
import 'package:logincatalog/widgets/custom_text_form_field.dart';
import 'package:logincatalog/widgets/spaces.dart';

class LoginScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var iconTheme = Theme.of(context).iconTheme;
    var heightOfAppBar = 56.0;
    var heightOfScreen = MediaQuery.of(context).size.height - heightOfAppBar;

    return Scaffold(
      appBar: AppBar(
        elevation: Sizes.ELEVATION_0,
        backgroundColor: AppColors.pink,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.settings), onPressed: () {})
        ],
      ),
      body: Stack(
        children: <Widget>[
          ClipPath(
            clipper: CustomLoginShapeClipper2(),
            child: Container(
              height: heightOfScreen,
              decoration: BoxDecoration(color: AppColors.greyShade2),
            ),
          ),
          ClipPath(
            clipper: CustomLoginShapeClipper1(),
            child: Container(
              height: heightOfScreen,
              decoration: BoxDecoration(color: AppColors.pink),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: Sizes.MARGIN_36),
            child: Column(
              children: <Widget>[
                //10% of the height of screen
                SizedBox(height: heightOfScreen * 0.1),
                ListBody(
                  children: <Widget>[
                    Text(
                      StringConst.WELCOME,
                      style: textTheme.headline.copyWith(
                        color: AppColors.white,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SpaceH4(),
                    Text(
                      StringConst.BACK,
                      style: textTheme.headline.copyWith(
                        color: AppColors.white,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SpaceH4(),
                    Text(
                      StringConst.SIGN_IN_MSG,
                      style: textTheme.subtitle.copyWith(
                        color: AppColors.white,
                        fontSize: Sizes.TEXT_SIZE_16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: heightOfScreen * 0.1),
                    Text(
                      StringConst.SIGN_IN,
                      style: textTheme.headline.copyWith(
                        color: AppColors.white,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
                SpaceH16(),
                CustomTextFormField(
                  hasPrefixIcon: true,
                  textInputType: TextInputType.emailAddress,
                  hintText: StringConst.EMAIL_ADDRESS,
                  hintTextStyle: Styles.hintTextStyle(color: AppColors.white),
                  prefixIcon: Icon(
                    FeatherIcons.mail,
                    color: iconTheme.color,
                    size: Sizes.ICON_SIZE_20,
                  ),
                ),
                SpaceH16(),
                CustomTextFormField(
                  hasPrefixIcon: true,
                  textInputType: TextInputType.text,
                  hintTextStyle: Styles.hintTextStyle(color: AppColors.white),
                  hintText: StringConst.PASSWORD,
                  prefixIcon: Icon(
                    FeatherIcons.key,
                    color: iconTheme.color,
                    size: Sizes.ICON_SIZE_20,
                  ),
                ),
                SpaceH24(),
                CustomButton(
                  title: StringConst.SIGN_ME_IN,
                  textStyle: textTheme.button,
                  onPressed: () {},
                ),
                SpaceH16(),
                InkWell(
                  onTap: () => Router.navigator.pushReplacementNamed(Routes.signupScreen1),
                  child: Text(
                    StringConst.DONT_HAVE_AN_ACCOUNT,
                    style: textTheme.subtitle.copyWith(
                      fontSize: Sizes.TEXT_SIZE_14,
                      color: AppColors.blackShade6,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SpaceH8(),
                Text(
                  StringConst.NEED_HELP,
                  style: textTheme.subtitle.copyWith(
                    fontSize: Sizes.TEXT_SIZE_14,
                    color: AppColors.blackShade6,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SpaceH2(),
                CustomDivider(
                  color: AppColors.blackShade6,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
