import 'package:battery_info/battery_info_plugin.dart';
import 'package:battery_info/model/android_battery_info.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../constants.dart';

class batt extends StatelessWidget
{
  static String id = 'batt';
  batt({super.key});


  String batterylevel = "50",
      batteryhealth = "Good";
      //chargingstatus = "Charging";
      //pluggedstatus = "";

  @override
  void initState()
  {

    AndroidBatteryInfo infoandroid = AndroidBatteryInfo();
     Future.delayed(Duration.zero, () async
     {
      infoandroid = (await BatteryInfoPlugin().androidBatteryInfo)!;
      batterylevel = infoandroid.batteryLevel.toString();
      batteryhealth = infoandroid.health.toString();
      //chargingstatus = infoandroid.chargingStatus.toString();

      setState(() {
        //refresh UI
      });
    });

    initState();
  }

  @override
  Widget build(BuildContext context)
  {
    double height= MediaQuery.of(context).size.height;
      return Scaffold(
          backgroundColor:kThirdColor,
          body: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(20),
              child: Column(
                children: [

              const Image(
              image: AssetImage('images/icons/new battery.gif')
              ),

                  SizedBox(
                    height: height* .40 ,
                  ),

                  Text("Battery Level: $batterylevel %",style: TextStyle(color:Color(0xFFFFFFFF),fontSize:15),),
                  Text("Battery Health: $batteryhealth",style: TextStyle(color:Color(0xFFFFFFFF),fontSize:15),),
                  //Text("Charging Status: $chargingstatus",style: TextStyle(color:Color(0xFFFFFFFF),fontSize:15),),
                  //values: ChargingStatus.charging, discharging, full, unkown
                  //
                  //Text("Plugged Status : $pluggedstatus"),
                ],
              )
          )
      );

  }

  void setState(Null Function() param0) {}


}







