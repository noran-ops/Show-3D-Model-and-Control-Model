import 'package:flutter/material.dart';
import '../constants.dart';
import '3d_model.dart';
import 'package:flutter_application/screens/flutter_wifi.dart';
import 'package:battery_info/battery_info_plugin.dart';
import 'package:battery_info/model/android_battery_info.dart';
import 'package:flutter_application/screens/bluetooth.dart';
import 'package:flutter_application/screens/steps.dart';
import 'package:flutter_application/screens/stepsensor.dart';
import 'package:flutter_application/screens/dashboard.dart';

import 'connect_bluetooth.dart';

class PersonaScreen extends StatelessWidget
{
  static String id='PersonaScreen';
  PersonaScreen({super.key});

  String batterylevel = "50",
      batteryhealth = "Good";

  @override
  void initState()
  {
    AndroidBatteryInfo infoandroid = AndroidBatteryInfo();
    Future.delayed(Duration.zero, () async
    {
      infoandroid = (await BatteryInfoPlugin().androidBatteryInfo)!;
      batterylevel = infoandroid.batteryLevel.toString();
      batteryhealth = infoandroid.health.toString();
      setState(() {
        //refresh UI
      });
    });
    initState();
  }
  @override
  Widget build(BuildContext context)
  {
    double height =MediaQuery.of(context).size.height ;
    double width =MediaQuery.of(context).size.width ;
    return Scaffold(
      backgroundColor:kmainColor,
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top:4),
            child:SizedBox(
             child:Column(
                children: <Widget>[
                  const Image(
                      image: AssetImage('images/icons/2.gif')
                  ),
                  SizedBox(
                    height: height* .01 ,
                  ),
                  Text(" $batterylevel%",style: TextStyle(color:Color(0xFFFFFFFF),fontSize:18),),
                  Text(" $batteryhealth",style: TextStyle(color:Color(0xFFFFFFFF),fontSize:18),),
                  Row(
                  children: <Widget>[
                    SizedBox(
                      width: width* .08 ,
                    ),
                    SizedBox(
                      width: width* .17 ,
                    ),
                  ],
                  ),
                  SizedBox(
                    height: height* .25,
                  ),
                  Row(
                  children:<Widget>[
                    SizedBox(
                      width: width* .02 ,
                    ),
                    Row(
                    children:<Widget>[
                      const Icon(
                      Icons.view_in_ar,color:Color(0xFFFFFFFF),
                      size: 31,
                      ),
                      SizedBox(
                        width: width* .02 ,
                      ),
                  GestureDetector(
                    onTap:(){
                      Navigator.pushNamed(context,Model.id);
                    },
                    child: const Text('3D Model',
                      style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize:19
                      ),
                    ),
                    ),
                    ],
                    ),
                    SizedBox(
                      width: width* .19 ,
                    ),
                  ],
                  ),
                  SizedBox(
                    height: height* .04 ,
                  ),


                  Row(
                    children:<Widget>[
                      SizedBox(
                        width: width* .02 ,
                      ),
                      Row(
                        children:<Widget>[
                          const Icon(
                            Icons.directions_walk,color:Color(0xFFFFFFFF),
                            size: 31,
                          ),
                          SizedBox(
                            width: width* .02 ,
                          ),
                          GestureDetector(
                            onTap:(){
                              Navigator.pushNamed(context,dash.id);
                            },
                            child: const Text("Walking",
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontSize:19
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: width* .19 ,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height* .04 ,
                  ),

                  Row(
                    children:<Widget>[
                      SizedBox(
                        width: width* .02 ,
                      ),
                      Row(
                        children:<Widget>[
                          const Icon(
                            Icons.bluetooth_connected,color:Color(0xFFFFFFFF),
                            size: 31,
                          ),
                          SizedBox(
                            width: width* .02 ,
                          ),
                          GestureDetector(
                            onTap:(){
                              Navigator.pushNamed(context,blue.id);
                            },
                            child: const Text('Leg control',
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontSize:19
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: width* .19 ,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height* .04 ,
                  ),




                  Row(
                  children:<Widget>[
                    SizedBox(
                      width: width* .02 ,
                    ),
                  Row(
                  children:<Widget>[
                    const Icon(
                      Icons.person,color:Color(0xFFFFFFFF),
                      size: 31,
                    ),
                    SizedBox(
                      width: width* .02 ,
                    ),
                  GestureDetector(
                    onTap:(){
                      Navigator.pushNamed(context,real_story.id);
                    },
                    child: const Text('Real stories',
                      style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize:19
                      ),
                    ),
                  ),
                  ],
                  ),
                  SizedBox(
                    width: width* .09 ,
                  ),
                  ],
                  ),
                ],
              ),
            ),
           ),
            ],
          ),
      );
  }
  void setState(Null Function() param0) {}
}


