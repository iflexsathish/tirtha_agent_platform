import 'package:flutter/material.dart';
import 'package:tirtha_agent/pages/tirtha_agent_dashboard.dart';
import 'package:tirtha_agent/pages/tirtha_launch.dart';
import 'package:tirtha_agent/pages/tirtha_login.dart';
import 'package:tirtha_agent/pages/welcome.dart';



void main() =>  runApp(MaterialApp(
  initialRoute: '/tirthaLaunch',
  routes: {
    '/tirthaLaunch': (context) => tirthaLaunch(),
    '/tirthaLogin': (context) => tirthaLogin(),
    '/tirthaAgentDashBoard': (context) => tirthaAgentDashBoard(),
  },

));

// For reference

/*void main() => runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
    }
));*/
