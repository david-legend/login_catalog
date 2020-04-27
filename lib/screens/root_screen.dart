import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logincatalog/bloc/theme_bloc.dart';
import 'package:logincatalog/routes/router.gr.dart';
import 'package:logincatalog/values/values.dart';
import 'package:logincatalog/widgets/custom_shape_clippers.dart';

class RootScreen extends StatelessWidget {
  RootScreen({@required this.themeBloc});

  final ThemeBloc themeBloc;

//  List<Map<String, dynamic>> designs = [
//    {
//      "name": "Login Design 1",
//      "image_url": ImagePath.LOGIN_1,
//      "routeName": Routes.loginScreen1,
//      "arguments": null,
//    },
//    {
//      "name": "Login Design 2",
//      "image_url": ImagePath.LOGIN_2,
//      "routeName": Routes.loginScreen2,
//    },
//    {
//      "name": "Login Design 3",
//      "image_url": ImagePath.LOGIN_3,
//      "routeName": Routes.loginScreen3,
//    },
//    {
//      "name": "Login Design 4",
//      "image_url": ImagePath.LOGIN_4,
//      "routeName": null,
//    },
//    {
//      "name": "Login Design 5",
//      "image_url": ImagePath.LOGIN_5,
//      "routeName": null,
//    },
//    {
//      "name": "Login Design 6",
//      "image_url": ImagePath.LOGIN_6,
//      "routeName": null,
//    },
//    {
//      "name": "Login Design 7",
//      "image_url": ImagePath.LOGIN_7,
//      "routeName": null,
//    },
//  ];

  @override
  Widget build(BuildContext context) {
    var heightOfScreen = MediaQuery.of(context).size.height;
    var widthOfScreen = MediaQuery.of(context).size.width;
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
                  navigate: () => Router.navigator.pushNamed(
                    Routes.loginScreen1,
                    arguments: LoginScreen1Arguments(themeBloc: themeBloc),
                  ),
                ),
                designCard(
                  context: context,
                  title: "Login Design 2",
                  imageUrl: ImagePath.LOGIN_2,
                  navigate: () => Router.navigator.pushNamed(
                    Routes.loginScreen2,
                    arguments: LoginScreen2Arguments(themeBloc: themeBloc),
                  ),
                ),
                designCard(
                  context: context,
                  title: "Login Design 3",
                  imageUrl: ImagePath.LOGIN_3,
                  navigate: () => Router.navigator.pushNamed(
                    Routes.loginScreen3,
                    arguments: LoginScreen3Arguments(themeBloc: themeBloc),
                  ),
                ),
                designCard(
                  context: context,
                  title: "Login Design 4",
                  imageUrl: ImagePath.LOGIN_4,
                ),
                designCard(
                  context: context,
                  title: "Login Design 5",
                  imageUrl: ImagePath.LOGIN_5,
                ),
                designCard(
                  context: context,
                  title: "Login Design 6",
                  imageUrl: ImagePath.LOGIN_6,
                ),
                designCard(
                  context: context,
                  title: "Login Design 7",
                  imageUrl: ImagePath.LOGIN_7,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  navigate(String routeName, Object arguments) {
    Router.navigator.pushNamed(routeName, arguments: arguments);
  }

  Widget designCard({
    @required BuildContext context,
    @required String title,
    @required String imageUrl,
    Function() navigate,
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

//  List<Widget> _buildDesignCards({
//    @required BuildContext context,
//    @required List<Map<String, dynamic>> designs,
//  }) {
//    List<Widget> cards = [];
//    for (var i = 0; i < designs.length; i++) {
//      cards.add(SpaceW16());
//      cards.add(
//        designCard(
//          context: context,
//          title: designs[i]['name'],
//          imageUrl: designs[i]['image_url'],
////          routeName: designs[i]['routeName'],
////          arguments: ""
//        ),
//      );
//      cards.add(SpaceW16());
//    }
//    return cards;
//  }
}
