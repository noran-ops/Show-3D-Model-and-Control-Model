import 'package:flutter_application/helpers/api.dart';
import 'package:flutter_application/helpers/connection.dart';
import 'package:flutter_application/helpers/constants.dart';
import 'package:flutter_application/widgets/No_internet.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../constants.dart';

class real_story extends StatelessWidget
{
  static String id = 'real_story';
  real_story({super.key});

  get onPressed => null;

  @override
  Widget build(BuildContext context)
  {
    double height= MediaQuery.of(context).size.height;
    double width =MediaQuery.of(context).size.width ;

    return Scaffold(
      backgroundColor:kMainColor,
      body: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(top:60),
          ),

          Row(
            children:<Widget>[
              SizedBox(
                width: width* .02 ,
              ),
              Row(
                children:const <Widget>[
                  Text('The Power of Bionic',
                    style: TextStyle(
                        color: Color(0xFF0D80D9),
                        fontSize:22
                    ),
                  ),
                ],
              ),
            ],
          ),

          Row(
            children:<Widget>[
              SizedBox(
                width: width* .02 ,
              ),
              Row(
                children:const <Widget>[
                  Text('Limbs to Change Lives',
                    style: TextStyle(
                        color: Color(0xFF0D80D9),
                        fontSize:22
                    ),
                  ),
                ],
              ),
            ],
          ),

          SizedBox(
            height: height* .03 ,
          ),


          Row(
            children:<Widget>[
              SizedBox(
                width: width* .5 ,
              ),
              Row(
                children:<Widget>[
                    const Text('Gerry Kinney',
                      style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize:19
                      ),
                    ),
                ],
              ),
            ],
          ),

          SizedBox(
            height: height* .01 ,
          ),


          Row(
          children: <Widget>[
            SizedBox(
             width: width* .3,
             ),
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child:Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color(0xFF0D47A1),
                          Color(0xFF1976D2),
                          Color(0xFF42A5F5),
                        ],
                      ),
                    ),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.only(left:30.0,right:40.0,bottom:30.0,top:30.0),
                    textStyle: const TextStyle(fontSize: 30),
                  ),
                  onPressed:onPressed,

                  child:Column(
                    children:<Widget>[
                      Text("Gerry Kinney lost",
                        style: TextStyle(
                            color:Color(0xFFFFFFFF),
                            fontSize:17
                        ),
                      ),

                      Text("both his arms",
                        style: TextStyle(
                            color:Color(0xFFFFFFFF),
                            fontSize:17
                        ),
                      ),

                      Text('below the elbows from',
                        style: TextStyle(
                            color:Color(0xFFFFFFFF),
                            fontSize:17
                        ),
                      ),

                      Text('See how far',
                        style: TextStyle(
                            color:Color(0xFFFFFFFF),
                            fontSize:17
                        ),
                      ),

                      Text('he’s come since!',
                        style: TextStyle(
                            color:Color(0xFFFFFFFF),
                            fontSize:17
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
         ],
         ),

          SizedBox(
            height: height* .03 ,
          ),

          Row(
            children:<Widget>[
              SizedBox(
                width: width* 0.2 ,
              ),
              Row(
                children:<Widget>[
                  const Text('Adrianne Haslet',
                    style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize:19
                    ),
                  ),
                ],
              ),
            ],
          ),

          SizedBox(
            height: height* .01 ,
          ),

          Row(
            children: <Widget>[
              SizedBox(
                width: width* .04,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child:Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFF0D47A1),
                              Color(0xFF1976D2),
                              Color(0xFF42A5F5),
                            ],
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.only(left:20.0,right:20.0,bottom:40.0,top:40.0),
                        textStyle: const TextStyle(fontSize: 30),
                      ),
                      onPressed:onPressed,

                      child:Column(
                        children:<Widget>[
                          Text("Those with different problems.",
                            style: TextStyle(
                                color:Color(0xFFFFFFFF),
                                fontSize:17
                            ),
                          ),

                          Text("hey have the same feelings,",
                            style: TextStyle(
                                color:Color(0xFFFFFFFF),
                                fontSize:17
                            ),
                          ),

                          Text('hopes and dreams as the rest of us.',
                            style: TextStyle(
                                color:Color(0xFFFFFFFF),
                                fontSize:17
                            ),
                          ),

                          Text("It's not enough for us to structure ",
                            style: TextStyle(
                                color:Color(0xFFFFFFFF),
                                fontSize:17
                            ),
                          ),


                          Text("our healthcare systems",
                            style: TextStyle(
                                color:Color(0xFFFFFFFF),
                                fontSize:17
                            ),
                          ),

                          Text("just to give people like",
                            style: TextStyle(
                                color:Color(0xFFFFFFFF),
                                fontSize:17
                            ),
                          ),

                          Text("Adrianne minimal prostheses.",
                            style: TextStyle(
                                color:Color(0xFFFFFFFF),
                                fontSize:17
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(
            height: height* .03 ,
          ),

          Row(
            children:<Widget>[
              SizedBox(
                width: width* .5 ,
              ),
              Row(
                children:<Widget>[
                  const Text('Tilly Lockey',
                    style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize:19
                    ),
                  ),
                ],
              ),
            ],
          ),

          SizedBox(
            height: height* .01 ,
          ),


          Row(
            children: <Widget>[
              SizedBox(
                width: width* .3,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child:Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFF0D47A1),
                              Color(0xFF1976D2),
                              Color(0xFF42A5F5),
                            ],
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.only(left:10.0,right:10.0,bottom:25.0,top:20.0),
                        textStyle: const TextStyle(fontSize: 30),
                      ),
                      onPressed:onPressed,

                      child:Column(
                        children:<Widget>[
                          Text("Tilly Lockey lost",
                            style: TextStyle(
                                color:Color(0xFFFFFFFF),
                                fontSize:17
                            ),
                          ),

                          Text("both her hands",
                            style: TextStyle(
                                color:Color(0xFFFFFFFF),
                                fontSize:17
                            ),
                          ),

                          Text('at the wrist to meningitis',
                            style: TextStyle(
                                color:Color(0xFFFFFFFF),
                                fontSize:17
                            ),
                          ),

                          Text('when she was 15 months old.',
                            style: TextStyle(
                                color:Color(0xFFFFFFFF),
                                fontSize:17
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}









