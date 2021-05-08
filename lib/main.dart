import 'package:flutter/material.dart';
import 'package:tirtha_agent/pages/tirtha_agent_dashboard.dart';
import 'package:tirtha_agent/pages/tirtha_agent_maininfo.dart';
import 'package:tirtha_agent/pages/tirtha_agent_sevainfo.dart';
import 'package:tirtha_agent/pages/tirtha_agent_maininfo3.dart';
import 'package:tirtha_agent/pages/tirtha_launch.dart';
import 'package:tirtha_agent/pages/tirtha_login.dart';
import 'package:tirtha_agent/pages/welcome.dart';



void main() =>  runApp(MaterialApp(
  initialRoute: '/tirthaLaunch',
  routes: {
    '/tirthaLaunch': (context) => tirthaLaunch(),
    '/tirthaLogin': (context) => tirthaLogin(),
    '/tirthaAgentDashBoard': (context) => tirthaAgentDashBoard(),
    '/tirthaAgentMainInfo': (context) => tirthaAgentMainInfo(),
    '/tirthaAgentSevaInfo': (context) => tirthaAgentSevaInfo(),
    '/tirthaAgentMainInfo3': (context) => tirthaAgentMainInfo3(),
  },

));

