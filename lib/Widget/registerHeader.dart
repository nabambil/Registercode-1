import 'package:flutter/material.dart';

// Constant -----------------------------------------------------------------------------\
const String appName = 'i-KWKPK';

// Main: Header ---------------------------------------------------------------------------\
class RegisterHeader extends StatelessWidget {
  final String title;
  final String description;

  RegisterHeader({
    @required this.description,
    @required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        topPart,
        _Title(title),
        _Description(description),
      ],
    );
  }

  Widget get topPart => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          _Name(),
          _SarawakLogo(),
        ],
      );
}

// 1. Sarawak Logo ---------------------------------------------------------------------------\
class _SarawakLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/Logo.png', height: 80, width: 80);
  }
}

// 2. Title ---------------------------------------------------------------------------\
class _Title extends StatelessWidget {
  final String text;

  _Title(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 35,
        height: 1.5,
        color: Colors.white,
      ),
    );
  }
}

// 3. App Name ---------------------------------------------------------------------------\
class _Name extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      appName,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: Colors.white,
      ),
    );
  }
}

// 4. Description ---------------------------------------------------------------------------\
class _Description extends StatelessWidget {
  final String text;

  _Description(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        height: 1.5,
        fontSize: 17,
        color: Colors.white,
      ),
    );
  }
}
