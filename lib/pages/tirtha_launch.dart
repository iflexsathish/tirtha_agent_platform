import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class tirthaLaunch extends StatefulWidget {
  @override
  _tirthaLaunchState createState() => _tirthaLaunchState();
}

class _tirthaLaunchState extends State<tirthaLaunch> {

  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.all(15.0),
          children: <Widget>[
            Center(
              child: Card(
                //elevation: 1.0,
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      Text("Tirtha Agent Platform",
                          style: TextStyle(
                            color: Colors.deepPurple.shade400,
                            fontSize: 28.0,
                            fontWeight: FontWeight.bold,
                          )),
                      SizedBox(
                        height: 30.0,
                      ),
                      Image.asset('assets/gopu.jpg',
                          height: 400,
                          width: 400),
                      SizedBox(
                        height: 25.0,
                      ),
                      Material(
                        borderRadius: BorderRadius.circular(40.0),
                        //elevation: 5.0,
                        child: MaterialButton(
                          onPressed: () async {
                            dynamic result = await Navigator.pushNamed(context, '/tirthaLogin');
                          },
                          minWidth: 150.0,
                          height: 50.0,
                          color: Colors.deepPurple.shade300,
                          child: Text(
                            "LOGIN",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


