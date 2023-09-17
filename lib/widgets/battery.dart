
import 'package:battery_info/battery_info_plugin.dart';
import 'package:battery_info/model/android_battery_info.dart';
import 'package:flutter/material.dart';

class BatteryInfoPlugin extends StatelessWidget
{
  late String batteryhealth;

  late String batterylevel;

  late String chargingstatus;

  late String pluggedstatus;

  //BatteryInfoPlugin ({Key? key}) : super(key: key);

  get androidBatteryInfoStream => null;

  int? level = AndroidBatteryInfo().batteryLevel;

  @override
  void initState() {
    AndroidBatteryInfo infoandroid = AndroidBatteryInfo();
    BatteryInfoPlugin().androidBatteryInfoStream.listen((
        AndroidBatteryInfo batteryInfo) {
      //add listiner to update values if there is changes
      infoandroid = batteryInfo;
      batterylevel = infoandroid.batteryLevel.toString();
      batteryhealth = infoandroid.health.toString();
      chargingstatus = infoandroid.chargingStatus.toString();
      pluggedstatus = infoandroid.pluggedStatus.toString();

      setState(() {
        //refresh UI
      });
    });
  }

  void setState(Null Function() param0) {

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}