import 'package:flutter/material.dart';

class BackgroundBody extends StatelessWidget {
  final Widget body;

  BackgroundBody({@required this.body});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        image: new DecorationImage(
            image: new AssetImage('assets/background1.png'), fit: BoxFit.cover),
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height:12),
            GoBackButton(action: () => Navigator.of(context).pop()),
            Expanded(child: Container(padding: EdgeInsets.symmetric(vertical:12, horizontal: 20), child: body))
          ],
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 12),
    );
  }
}

class GoBackButton extends StatelessWidget {
  final Function action;

  GoBackButton({@required this.action});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: new Icon(Icons.arrow_back_ios, color: Colors.white, size: 30),
      onTap: () => action,
    );
  }
}
