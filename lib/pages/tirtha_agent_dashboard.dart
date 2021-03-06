import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class tirthaAgentDashBoard extends StatefulWidget {
  @override
  _tirthaAgentDashBoardState createState() => _tirthaAgentDashBoardState();
}

class _tirthaAgentDashBoardState extends State<tirthaAgentDashBoard> {

  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          //padding: EdgeInsets.all(15.0),
          children: <Widget>[
            Center(
              child: Container(
                  //padding: EdgeInsets.all(10.0),
                  //margin: const EdgeInsets.all(10.0),
                  color: Colors.deepPurple.shade300,
                  width: 340.0,
                  height: 800.0,
                  child: Column(
                    children: <Widget>[

                      SizedBox(
                        height: 200.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/gopu.jpg',
                            fit: BoxFit.cover,
                            height: 150,
                            width: 100,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                      Text("Agent Platform",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Calibiri" ,
                            fontSize: 32.0,
                            fontWeight: FontWeight.bold,
                          )),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text("For a seamless spiritual experience",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Calibiri" ,
                            fontSize: 14.0,
                            fontWeight: FontWeight.normal,
                          )),
                      SizedBox(
                        height: 180.0,
                      ),
                      Text("Agent Platform",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Calibiri" ,
                            fontSize: 28.0,
                            fontWeight: FontWeight.bold,
                          )),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text("version 2.3",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Calibiri" ,
                            fontSize: 14.0,
                            fontWeight: FontWeight.normal,
                          )),
                    ],
                  ),
                ),

            ),
            Center(
              child: Container(
                //padding: EdgeInsets.all(10.0),
                //margin: const EdgeInsets.all(10.0),
                color: Colors.grey[200],
                width: 940.0,
                height: 800.0,
                child: Column(
                  children: <Widget>[

                    SizedBox(
                      height: 225.0,
                    ),
                    Text("Agent Login",
                        style: TextStyle(
                          color: Colors.deepPurple[400],
                          fontFamily: "Calibiri" ,
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(
                      height: 40.0,
                    ),
                Container (
                  width: 400.0,
                  height: 50.0,
                  child :
                  TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        fillColor: Colors.purple,
                        prefixIcon: Icon(Icons.person),
                        labelText: "Username",
                      ),
                    ),
                ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Container (
                      width: 400.0,
                      height: 50.0,
                      child :
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          fillColor: Colors.white,
                          prefixIcon: Icon(Icons.lock),
                          labelText: "Password",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(100.0),
                      //elevation: 5.0,
                      child: MaterialButton(
                        onPressed: ()  {

                        },
                        minWidth: 250.0,
                        height: 40.0,
                        color: Colors.deepPurple.shade300,
                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text("Forgot Username/Password?",
                        style: TextStyle(
                          color: Colors.black54,
                          fontFamily: "Calibiri" ,
                          fontSize: 14.0,
                          fontWeight: FontWeight.normal,
                        )),
                    SizedBox(
                      height: 100.0,
                    ),
                    Text("Want to become an agent? Register",
                        style: TextStyle(
                          color: Colors.black54,
                          fontFamily: "Calibiri" ,
                          fontSize: 14.0,
                          fontWeight: FontWeight.normal,
                        )),
                  ],
                ),
              ),

            ),
          ],
        ),
      ),
    );
  }
}


