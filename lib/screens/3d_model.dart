
import 'package:babylonjs_viewer/babylonjs_viewer.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class Model extends StatelessWidget
{
  static String id = 'Model';
  const Model({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: kMainColor,
        body:BabylonJSViewer(src: "assets/prototype10.glb"),



    );
  }
}



