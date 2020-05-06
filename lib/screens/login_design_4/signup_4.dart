import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:logincatalog/values/values.dart';
import 'package:logincatalog/widgets/custom_button.dart';
import 'package:logincatalog/widgets/spaces.dart';

class SignUp4 extends StatefulWidget {
  @override
  _SignUp4State createState() => _SignUp4State();
}

class _SignUp4State extends State<SignUp4> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Icon(Icons.all_inclusive, size: 60),
            Text(
              StringConst.SIGN_UP_2,
              style: theme.textTheme.subtitle.copyWith(
                color: AppColors.black,
                fontSize: Sizes.TEXT_SIZE_40,
                fontWeight: FontWeight.w600,
              ),
            ),
            SpaceH8(),
            Text(
              StringConst.EASY_SIGN_UP,
              style: theme.textTheme.subtitle.copyWith(
                color: AppColors.greyShade8,
                fontWeight: FontWeight.bold
              ),
            ),
            SpaceH20(),
            Container(
              width: MediaQuery.of(context).size.width - 52,
              child: CustomButton(
                title: StringConst.CONTINUE_WITH_FACEBOOK,
                elevation: Sizes.ELEVATION_12,
                textStyle: theme.textTheme.subtitle.copyWith(
                  color: AppColors.white,
                  fontWeight: FontWeight.w600,
                ),
                color: AppColors.blue,
                onPressed: () {},
              ),
            ),
            SpaceH16(),
            Container(
              width: MediaQuery.of(context).size.width - 70,
              child: CustomButton(
                title: StringConst.USE_EMAIL,
                elevation: Sizes.ELEVATION_12,
                textStyle: theme.textTheme.subtitle.copyWith(
                  color: AppColors.white,
                  fontWeight: FontWeight.w600,
                ),
                color: AppColors.blue,
                onPressed: () {},
              ),
            ),
            SpaceH16(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FloatingActionButton(
                  backgroundColor: AppColors.twitterBlue,
                  mini: true,
                  onPressed: () {},
                  child: Icon(FeatherIcons.twitter),
                  heroTag: "twitter",
                ),
                SpaceW16(),
                FloatingActionButton(
                  backgroundColor: AppColors.googleRed,
                  mini: true,
                  onPressed: () {},
                  child: Icon(FontAwesomeIcons.google),
                  heroTag: "google",
                ),
                SpaceW16(),
                FloatingActionButton(
                  backgroundColor: AppColors.linkedInBlue,
                  mini: true,
                  onPressed: () {},
                  child: Icon(FeatherIcons.linkedin),
                  heroTag: "linkedIn",
                ),
              ],
            ),
            RichText(
              text: TextSpan(
//            style: ,
                children: [
                  TextSpan(
                    text: StringConst.ALREADY_HAVE_AN_ACCOUNT,
                    style: theme.textTheme.subtitle.copyWith(
                      color: AppColors.greyShade8,
                      fontSize: Sizes.TEXT_SIZE_14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: StringConst.LOG_IN_2,
                    style: theme.textTheme.subtitle.copyWith(
                      color: AppColors.purple,
                      fontSize: Sizes.TEXT_SIZE_14,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold,
                    )
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
