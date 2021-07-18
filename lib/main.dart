import 'package:flutter/material.dart';
import 'package:tirtha_agent/pages/tirtha_agent_addldetails.dart';
import 'package:tirtha_agent/pages/tirtha_agent_addldetails_Redesigned.dart';

import 'package:tirtha_agent/pages/tirtha_agent_dashboard.dart';
import 'package:tirtha_agent/pages/tirtha_agent_guidedetails.dart';
import 'package:tirtha_agent/pages/tirtha_agent_maininfo.dart';
import 'package:tirtha_agent/pages/tirtha_agent_parkingdetails.dart';
import 'package:tirtha_agent/pages/tirtha_agent_prasadamdetails.dart';
import 'package:tirtha_agent/pages/tirtha_agent_sevainfo.dart';
import 'package:tirtha_agent/pages/tirtha_agent_snippetdetails.dart';
import 'package:tirtha_agent/pages/tirtha_agent_specialevents.dart';
import 'package:tirtha_agent/pages/tirtha_agent_contactdetails.dart';
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
    '/tirthaAgentSpecialEvents': (context) => tirthaAgentSpecialEvents(),
    '/tirthaAgentContactDetails': (context) => tirthaAgentContactDetails(),
    '/tirthaAgentSnippetDetails': (context) => tirthaAgentSnippetDetails(),
    '/tirthaAgentAddlDetails': (context) => tirthaAgentAddlDetails(),
    '/tirthaAgentParkingDetails': (context) => tirthaAgentParkingDetails(),
    '/tirthaAgentGuideDetails': (context) => tirthaAgentGuideDetails(),
    '/tirthaAgentPrasadamDetails': (context) => tirthaAgentPrasadamDetails(),
  },

));

