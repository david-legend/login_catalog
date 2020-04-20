import 'package:flutter/material.dart';
import 'package:logincatalog/values/values.dart';

class LoginScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: Sizes.ELEVATION_0,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.settings), onPressed: (){})
        ],
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Text(StringConst.WELCOME)
            ],
          ),
        ),
      ),
    );
  }
}
