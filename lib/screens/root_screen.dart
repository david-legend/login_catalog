import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logincatalog/bloc/theme_bloc.dart';
import 'package:logincatalog/routes/router.gr.dart';
import 'package:logincatalog/values/values.dart';
import 'package:logincatalog/widgets/custom_shape_clippers.dart';

class RootScreen extends StatelessWidget {
  RootScreen({required this.themeBloc});

  final ThemeBloc themeBloc;

  @override
  Widget build(BuildContext context) {
    var heightOfScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            top: 0,
            right: 0,
            child: ClipPath(
              clipper: CustomRootScreenShapeClipper(),
              child: Container(
                height: heightOfScreen,
                decoration: BoxDecoration(color: AppColors.pink),
              ),
            ),
          ),
          Container(
            child: ListView(
              children: [
                designCard(
                  context: context,
                  title: "Login Design 1",
                  imageUrl: ImagePath.LOGIN_1,
                  navigate: () => AutoRouter.of(context).push(
                    LoginScreen1Route(themeBloc: themeBloc),
                  ),
                ),
                designCard(
                  context: context,
                  title: "Login Design 2",
                  imageUrl: ImagePath.LOGIN_2,
                  navigate: () => AutoRouter.of(context).push(
                    LoginScreen2Route(themeBloc: themeBloc),
                  ),
                ),
                designCard(
                    context: context,
                    title: "Login Design 3",
                    imageUrl: ImagePath.LOGIN_3,
                    navigate: () => AutoRouter.of(context).push(
                          LoginScreen3Route(themeBloc: themeBloc),
                        )),
                designCard(
                  context: context,
                  title: "Login Design 4",
                  imageUrl: ImagePath.LOGIN_4,
                  navigate: () => AutoRouter.of(context).push(
                    SignUp4Route(themeBloc: themeBloc),
                  ),
                ),
                designCard(
                  context: context,
                  title: "Login Design 5",
                  imageUrl: ImagePath.LOGIN_5,
                  navigate: () => AutoRouter.of(context).push(
                    LoginScreen5Route(themeBloc: themeBloc),
                  ),
                ),
                designCard(
                  context: context,
                  title: "Login Design 6",
                  imageUrl: ImagePath.LOGIN_6,
                  navigate: () => AutoRouter.of(context).push(
                    LoginScreen6Route(themeBloc: themeBloc),
                  ),
                ),
                designCard(
                  context: context,
                  title: "Login Design 7",
                  imageUrl: ImagePath.LOGIN_7,
                  navigate: () => AutoRouter.of(context).push(
                    RegisterScreen7Route(themeBloc: themeBloc),
                  ),
                ),
                designCard(
                  context: context,
                  title: "Login Design 8",
                  imageUrl: ImagePath.LOGIN_8,
                  navigate: () => AutoRouter.of(context).push(
                    LoginScreen8Route(themeBloc: themeBloc),
                  ),
                ),
                designCard(
                  context: context,
                  title: "Login Design 9",
                  imageUrl: ImagePath.LOGIN_9,
                  navigate: () => AutoRouter.of(context).push(
                    LoginScreen9Route(themeBloc: themeBloc),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget designCard({
    required BuildContext context,
    required String title,
    required String imageUrl,
    required Function() navigate,
  }) {
    var heightOfScreen = MediaQuery.of(context).size.height;
    var widthOfScreen = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: navigate,
      child: Container(
        height: heightOfScreen * 0.4,
        width: widthOfScreen,
        margin: EdgeInsets.symmetric(
          horizontal: Sizes.MARGIN_20,
          vertical: Sizes.MARGIN_8,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Sizes.RADIUS_30),
        ),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Sizes.RADIUS_30),
          ),
          elevation: Sizes.ELEVATION_4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(Sizes.RADIUS_30),
                  topLeft: Radius.circular(Sizes.RADIUS_30),
                ),
                child: Image.asset(
                  imageUrl,
                  height: heightOfScreen * 0.3,
                  width: widthOfScreen,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: Sizes.MARGIN_16,
                  horizontal: Sizes.MARGIN_16,
                ),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: AppColors.lightBlueShade5,
                    fontWeight: FontWeight.w600,
                    fontSize: Sizes.TEXT_SIZE_18,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
