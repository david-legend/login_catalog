import 'package:flutter/material.dart';
import 'package:logincatalog/values/values.dart';
import 'package:logincatalog/widgets/custom_button.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              Text(StringConst.HELLO),
              Text(StringConst.GET_STARTED),
              CustomButton(
                title: StringConst.SIGN_UP,
                onPressed: () {},
              ),
              CustomButton(
                title: StringConst.SIGN_UP_WITH_GOOGLE,
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
        ),
      ),
    );
  }
}
