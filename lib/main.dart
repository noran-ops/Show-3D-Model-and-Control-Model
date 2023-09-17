import 'package:flutter/material.dart';
import 'package:flutter_application/screens/3d_model.dart';
import 'package:flutter_application/screens/battery_level.dart';
import 'package:flutter_application/screens/bluetooth.dart';
import 'package:flutter_application/screens/connect_bluetooth.dart';
import 'package:flutter_application/screens/dashboard.dart';
import 'package:flutter_application/screens/flutter_wifi.dart';
import 'package:flutter_application/screens/login_screen.dart';
import 'package:flutter_application/screens/personas_screen.dart';
import 'package:flutter_application/screens/signup_screen.dart';
import 'package:flutter_application/screens/starting.dart';
import 'package:flutter_application/screens/steps.dart';
import 'package:flutter_application/screens/stepsensor.dart';
import 'package:provider/provider.dart';
import 'helpers/connection.dart';

void main()
{
  runApp
    (
      MultiProvider
        (
      providers: [ChangeNotifierProvider(create: (_) => Connection())],
      child: const MyApp()
       )
  );
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Start.id,
      routes:
      {
      LoginScreen.id: (context) => const LoginScreen(),
        SignupScreen.id: (context) => const SignupScreen(),
        PersonaScreen.id: (context) => PersonaScreen(),
        batt.id: (context) => batt(),
        real_story.id: (context) => real_story(),
        Model.id: (context) => const Model(),
        Start.id: (context) => const Start(),
        FlutterBlueApp.id: (context) => const FlutterBlueApp(),
        blue.id: (context) => blue(title: '',),
        step.id: (context) =>  step(),
        Sensor.id: (context) =>  Sensor(),
        dash.id: (context) =>  const dash(),
      },
      theme: ThemeData(
      primarySwatch: Colors.blue,
      ),
      //home: flutter_wifi(),
    );
  }
}

