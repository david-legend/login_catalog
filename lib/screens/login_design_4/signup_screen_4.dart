import 'package:flutter/material.dart';
import 'package:logincatalog/values/values.dart';
import 'package:logincatalog/widgets/custom_button.dart';

class SignUpScreen4 extends StatefulWidget {
  @override
  _SignUpScreen4State createState() => _SignUpScreen4State();
}

class _SignUpScreen4State extends State<SignUpScreen4> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Icon(Icons.all_inclusive, size: 60),
          Text(StringConst.SIGN_UP_2),
          Text(StringConst.EASY_SIGN_UP),
          CustomButton(
            title: StringConst.CONTINUE_WITH_FACEBOOK,
            onPressed: () {},
          ),
          CustomButton(
            title: StringConst.USE_EMAIL,
            onPressed: () {},
          ),
          Row(
            children: <Widget>[
              FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.transfer_within_a_station),
                heroTag: "twitter",
              ),
              FloatingActionButton(
                onPressed: () {},
                child: Image.asset(
                  ImagePath.GOOGLE_LOGO,
                  height: Sizes.HEIGHT_24,
                  width: Sizes.WIDTH_24,
                ),
                heroTag: "google",
              ),
              FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.phonelink_erase),
                heroTag: "linkedIn",
              ),
            ],
          ),
          RichText(
            text: TextSpan(
//            style: ,
                children: [
                  TextSpan(text: StringConst.ALREADY_HAVE_AN_ACCOUNT),
                  TextSpan(text: StringConst.LOG_IN_2,
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),),
                ]),
          )
        ],
      ),
    );
  }
}
