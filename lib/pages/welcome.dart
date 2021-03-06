import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class welcome extends StatefulWidget {
  @override
  _welcomeState createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body:
      SafeArea(
        child: Padding(
        padding: const EdgeInsets.fromLTRB(45, 0.0, 45, 0),
          child: Column(
            children: <Widget>[
              Text('Tirtha welcomes you!',
                style: TextStyle (
                  height: 10,
                  fontSize: 30,
                  fontFamily: 'arial',
              ),
            ),
              // Text ('Next text'),
              //SizedBox(height: 20.0),
              Image.asset('assets/tta.jpg',
              height: 150,
              width: 450),
              SizedBox(height: 80.0),
              // Text ('Next text'),
              FlatButton(
                child: Text("Enter Survey", style: TextStyle(fontSize: 25.0),),
                height: 50,
                padding: EdgeInsets.symmetric(horizontal: 100),
                color: Colors.grey[800],
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onHighlightChanged: (value) {
                  print('onHighlightChanged value : $value');
                },
                onPressed: () async {
                  dynamic result = await Navigator.pushNamed(context, '/scrollAble');
                },
              ),
            ],
          )
        ),
      ),
    );
  }
}
