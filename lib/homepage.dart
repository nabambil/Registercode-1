import 'package:KGC/Widget/registerBottom.dart';
import 'package:KGC/Widget/registerHeader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'Widget/background.dart';
import 'Widget/BodyParts.dart';

// Constant -----------------------------------------------------------------------------\
const String screenDesc =
    'Please Register your details to access all i-KWKPK benefits and privileges';
const String screenName = "REGISTER";

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // VARIABLE ------------------------------------------------------------\
  bool status = false;

  // BUILDER -------------------------------------------------------------\
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundBody(
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            RegisterHeader(
              description: screenDesc,
              title: screenName,
            ),
            ProfilePicture(),
            TextTitle(text:"YOUR PICTURE"),
            StandardTextFormField(hintText: 'FIRST NAME'),
            StandardTextFormField(hintText: 'LAST NAME'),
            StandardTextFormField(hintText: 'MOBILE PHONE NO'),
            StandardTextFormField(hintText: 'EMAIL (OPTIONAL)'),
            SecuredTextFormField(hintText: 'PASSWORD'),
            Switcher(hintText: "I AM SARAWAKIAN"),
            SubmitButton(action: () {}, name: screenName),
            
          ],
          ),
        ),
      ),
    );
  }
}
