import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'Widget/background.dart';
import 'Field.dart';

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
      body: BackgroundBody(body:body),
    );
  }

  Widget get body => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(children: <Widget>[
                IconButton(
                  icon: new Icon(Icons.arrow_back_ios,
                      color: Colors.white, size: 30),
                  onPressed: () => Navigator.of(context).pop(),
                  alignment: Alignment(-35, -32),
                ),
                Text(
                  'i-KWKPK',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ]),
              Image.asset('assets/Logo.png', height: 80, width: 80),
            ],
          ),
          Text(
            'REGISTER',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 35,
              height: 1.5,
              color: Colors.white,
            ),
          ),
          Text(
            'Please Register your details to access all i-KWKPK benefits and privileges',
            style: TextStyle(
              height: 1.5,
              fontSize: 17,
              color: Colors.white,
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                //padding: EdgeInsets.all(16.0),
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
              )
            ],
          ),
          Text(
            'YOUR PICTURE',
            // icon: Icon(Icons.visibility_off,)
            style: TextStyle(
              fontSize: 12,
              height: 2.0,
              color: Colors.white,
            ),
            // onChanged: (value) {},
          ),
          Field(),
          Row(
            children: <Widget>[
              Text(
                'I AM SARAWAKIAN ',
                style: TextStyle(
                  fontSize: 20,
                  height: 1.5,
                  color: Colors.white,
                ),
              ),
              Switch(
                activeColor: Colors.orange,
                value: status,
                onChanged: (value) {
                  print("VALUE : $value");
                  setState(() {
                    status = value;
                  });
                },
              ),
            ],
          ),
          RaisedButton(
            padding: EdgeInsets.all(15),
            onPressed: () {},
            child: Text('REGISTER'),
            color: Colors.orange,
          ),
        ],
      );
}
