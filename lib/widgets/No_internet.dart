
import 'package:flutter/material.dart';

class NoInternet extends StatelessWidget
{
  const NoInternet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
     double height= MediaQuery.of(context).size.height;
     double width =MediaQuery.of(context).size.width ;
       return Column(
       children:const <Widget>[
        Text('No Internet Connection',style: TextStyle(color:Color(0xFFdf0000),fontSize:15),),
      ],
    );
  }
}