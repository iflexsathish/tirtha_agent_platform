import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class scrollAbleCpy extends StatefulWidget {
  @override
  _scrollAbleCpyState createState() => _scrollAbleCpyState();
}

class _scrollAbleCpyState extends State<scrollAbleCpy> {

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
                elevation: 8.0,
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          labelText: "Username or Email",
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          labelText: "Password",
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Material(
                        borderRadius: BorderRadius.circular(40.0),
                        //elevation: 5.0,
                        child: MaterialButton(
                          onPressed: () => {},
                          minWidth: 150.0,
                          height: 50.0,
                          color: Color(0xFF179CDF),
                          child: Text(
                            "LOGIN",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Row(
              children: <Widget>[
                Expanded(child: Text("Don't Have a Account?")),
                Text("Sign Up",
                    style: TextStyle(
                      color: Colors.blue,
                    )),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
                child: RaisedButton(
                  padding: EdgeInsets.all(15.0),
                  onPressed: () {},
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        40.0,
                      ),
                      side: BorderSide(color: Color(0xFF179CDF))),
                  child: Text(
                    "SKIP SIGN UP FOR NOW",
                    style:
                    TextStyle(fontSize: 18.0, color: Color(0xFF179CDF)),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}



 /* Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[600],
        title: Text('Question 1'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 0.0, 0, 0),
            child: Column(
              children: <Widget>[
                SizedBox(height: 10.0),
                Text('This is scrollable page',
                  style: TextStyle (
                    height: 1,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'arial',
                    wordSpacing: 2,
                  ),
                ),
                // Text ('Next text'),
                SizedBox(height: 15.0),


                CheckboxListTile(
                    contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    title: Text('Exact Location',
                        style: TextStyle(
                          fontSize: this.fsize,
                        )
                    ),
                    subtitle: Text('Driving directions'),
                    dense: true,
                    checkColor: Colors.blue,
                    activeColor: Colors.grey,
                    value: this.chklocation,
                    onChanged: (bool value) {
                      setState(() {
                        this.chklocation = value;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                CheckboxListTile(
                  contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  title: Text('Darshan Timings',
                      style: TextStyle(
                        fontSize: this.fsize,
                      )
                  ),
                  dense: true,
                  checkColor: Colors.blue,
                  activeColor: Colors.grey,
                  value: this.chkdarshan,
                  onChanged: (bool value) {
                    setState(() {
                      this.chkdarshan = value;
                    });
                  },
                  controlAffinity: ListTileControlAffinity.leading,
                ),
                CheckboxListTile(
                  contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  title: Text('Vehicle Parking',
                      style: TextStyle(
                        fontSize: this.fsize,
                      )
                  ),
                  dense: true,
                  checkColor: Colors.blue,
                  activeColor: Colors.grey,
                  value: this.chkparking,
                  onChanged: (bool value) {
                    setState(() {
                      this.chkparking = value;
                    });
                  },
                  controlAffinity: ListTileControlAffinity.leading,
                ),
                CheckboxListTile(
                  contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  title: Text('Shopping',
                      style: TextStyle(
                        fontSize: this.fsize,
                      )
                  ),
                  dense: true,
                  subtitle: Text('Puja items etc'),
                  checkColor: Colors.blue,
                  activeColor: Colors.grey,
                  value: this.chkshopping,
                  onChanged: (bool value) {
                    setState(() {
                      this.chkshopping = value;
                    });
                  },
                  controlAffinity: ListTileControlAffinity.leading,
                ),
                CheckboxListTile(
                  contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  title: Text('Contact Details',
                      style: TextStyle(
                        fontSize: this.fsize,
                      )
                  ),
                  dense: true,
                  subtitle: Text('contact no, email id etc'),
                  checkColor: Colors.blue,
                  activeColor: Colors.grey,
                  value: this.chkadmin,
                  onChanged: (bool value) {
                    setState(() {
                      this.chkadmin = value;
                    });
                  },
                  controlAffinity: ListTileControlAffinity.leading,
                ),
                CheckboxListTile(
                  contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  title: Text('Restaurants near by',
                      style: TextStyle(
                        fontSize: this.fsize,
                      )
                  ),
                  dense: true,
                  checkColor: Colors.blue,
                  activeColor: Colors.grey,
                  value: this.chkrestaurant,
                  onChanged: (bool value) {
                    setState(() {
                      this.chkrestaurant = value;
                    });
                  },
                  controlAffinity: ListTileControlAffinity.leading,
                ),


                SizedBox(height: 40.0),
                FlatButton(
                  child: Text("Next", style: TextStyle(fontSize: 20.0),),
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

                    final surveyData fData = surveyData(
                        chklocation: this.chklocation,
                        chkdarshan: this.chkdarshan,
                        chkparking: this.chkparking,
                        chkshopping: this.chkshopping,
                        chkadmin: this.chkadmin,
                        chkrestaurant: this.chkrestaurant,
                        chkacco: this.chkacco,
                        chkelder: this.chkelder,
                        // chkhistory: this.chkhistory,
                    );

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => secondPage(
                              fData: fData,
                            ))
                    );
                    // dynamic result = await Navigator.pushNamed(context, '/secondpage');
                  },
                ),
              ],
            )
        ),
      ),
    );
  }
}
*/