import 'package:flutter/material.dart';

class StandardTextFormField extends StatelessWidget {
  final String hintText;

  StandardTextFormField({this.hintText});

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

class SecuredTextFormField extends StatefulWidget {
  final String hintText;

  SecuredTextFormField({this.hintText});

  @override
  _SecuredTextFormFieldState createState() => _SecuredTextFormFieldState();
}

class _SecuredTextFormFieldState extends State<SecuredTextFormField> {
  bool isSecured = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isSecured,
      decoration: decoration,
      style: TextStyle(color: Colors.white, height: 2),
    );
  }

  InputDecoration get decoration {
    UnderlineInputBorder underline() =>
        UnderlineInputBorder(borderSide: BorderSide(color: Colors.white));

    Icon icon() => Icon(
          isSecured == true ? Icons.visibility_off : Icons.visibility,
          size: 25.0,
          color: Colors.white,
        );

    return InputDecoration(
      hintText: widget.hintText,
      hintStyle: TextStyle(color: Colors.white),
      enabledBorder: underline(),
      suffixIcon: IconButton(
        onPressed: () => iconTapped,
        icon: icon(),
      ),
    );
  }

  void iconTapped() {
    setState(() {
      isSecured = !isSecured;
    });
  }
}

class Switcher extends StatefulWidget {
  final String hintText;

  Switcher({@required this.hintText});

  @override
  _SwitcherState createState() => _SwitcherState();
}

class _SwitcherState extends State<Switcher> {
  bool status = true;

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[_title, _switch], mainAxisAlignment: MainAxisAlignment.spaceBetween,);
  }

  Text get _title {
    return Text(
      widget.hintText,
      style: TextStyle(fontSize: 20, height: 1.5, color: Colors.white),
    );
  }

  Switch get _switch {
    return Switch(
      activeColor: Colors.orange,
      value: status,
      onChanged: (value) => setState(() => status = value),
    );
  }
}

class ProfilePicture extends StatefulWidget {
  @override
  _ProfilePictureState createState() => _ProfilePictureState();
}

class _ProfilePictureState extends State<ProfilePicture> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 47,
      height: 47,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2.0,
          color: const Color(0xFFFFFFFF),
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Icon(
        Icons.camera_alt,
        color: Colors.white,
        size: 30.0,
      ),
    );
  }
}

class TextTitle extends StatelessWidget {
  final String text;

  TextTitle({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      // icon: Icon(Icons.visibility_off,)
      style: TextStyle(
        fontSize: 12,
        height: 2.0,
        color: Colors.white,
      ),
      // onChanged: (value) {},
    );
  }
}

