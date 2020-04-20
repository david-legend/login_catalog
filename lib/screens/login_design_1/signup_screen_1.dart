import 'package:flutter/material.dart';
import 'package:logincatalog/values/values.dart';
import 'package:logincatalog/widgets/custom_button.dart';
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
          onPressed: (){},
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
            decoration: BoxDecoration(
                color: AppColors.pink
            ),
          ),
          ClipPath(
            clipper: CustomSignUpShapeClipper2(),
            child: Container(
              height: heightOfScreen,
              decoration: BoxDecoration(
                  color: AppColors.white
              ),
            ),
          ),
          ClipPath(
            clipper: CustomSignUpShapeClipper1(),
            child: Container(
              height: heightOfScreen,
              decoration: BoxDecoration(
                  color: AppColors.greyShade2
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ListBody(
                  children: <Widget>[
                    Text(StringConst.SIGN_UP, style: textTheme.headline.copyWith()),
                    SpaceH8(),
                    Text(StringConst.SIGN_UP_MSG, style: textTheme.subtitle.copyWith()),
                  ],
                ),
                SpaceH20(),
                CustomTextFormField(
                  hasPrefixIcon: true,
                  textInputType: TextInputType.text,
                  hintText: StringConst.NAME,
                  prefixIcon: Icon(Icons.person_outline),
                ),
                SpaceH16(),
                CustomTextFormField(
                  hasPrefixIcon: true,
                  textInputType: TextInputType.emailAddress,
                  hintText: StringConst.EMAIL_ADDRESS,
                  prefixIcon: Icon(Icons.mail),
                ),
                SpaceH16(),
                CustomTextFormField(
                  hasPrefixIcon: true,
                  textInputType: TextInputType.text,
                  hintText: StringConst.PASSWORD,
                  prefixIcon: Icon(Icons.lock),
                ),
                SpaceH16(),
                CustomButton(
                  title: StringConst.SIGN_ME_UP,
                  textStyle: textTheme.button,
                  onPressed: () {},
                ),
                SpaceH16(),
                Text(StringConst.ALREADY_HAVE_AN_ACCOUNT),
                SpaceH8(),
                Text(StringConst.NEED_HELP),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
