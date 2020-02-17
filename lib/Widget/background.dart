import 'package:flutter/material.dart';

class BackgroundBody extends StatelessWidget{
  final Widget body;

  BackgroundBody({@required this.body});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
              image: new AssetImage('assets/background1.png'),
              fit: BoxFit.cover),
        ),
        padding: EdgeInsets.fromLTRB(20, 50, 50, 50),
        child: body,
    );
  }
}