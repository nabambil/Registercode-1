import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  final String hintText;

  MyTextFormField({
    this.hintText,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.white),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            )),
        style: TextStyle(color: Colors.white, height: 2));
  }
}

class Field extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MyTextFormField(hintText: 'FIRST NAME'),
        MyTextFormField(hintText: 'LAST NAME'),
        MyTextFormField(hintText: 'MOBILE PHONE NO'),
        MyTextFormField(hintText: 'EMAIL (OPTIONAL)'),
        TextFormField(
            decoration: InputDecoration(
              hintText: 'PASSWORD',
              hintStyle: TextStyle(color: Colors.white),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.visibility_off,
                  size: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
            style: TextStyle(color: Colors.white, height: 2)),
      ],
    );
  }
}
