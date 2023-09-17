import 'package:flutter/material.dart';
import '../constants.dart';
import 'login_screen.dart';

class Start extends StatelessWidget
{
  static String id = 'Start';
  const Start({super.key});

  get onPressed => null;

  @override
  Widget build(BuildContext context)
  {
    double height =MediaQuery.of(context).size.height ;
    double width =MediaQuery.of(context).size.width ;

    return Scaffold(
      backgroundColor:kSecondaryColor,
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top:80),
            child:SizedBox(
              child:Column(
                children:<Widget>[
                  const Image(
                      image: AssetImage('images/icons/ortho.jpg')
                  ),
                  // const Text('Ortholife',
                  //style: TextStyle(
                  //color: Color(0xFF15196e),
                  //fontSize:22
                  //),
                 // ),
                  // const Text('for bionic limbs',
                  //style: TextStyle(
                   //color: Color(0xFF234fb0),
                 // fontSize:22
                   //),
                 // ),
                  SizedBox(
                    height: height* .1,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget> [
                      GestureDetector(
                        onTap:(){
                          Navigator.pushNamed(context,LoginScreen.id);
                        },
                        child:ClipRRect(
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
                                  padding: const EdgeInsets.only(left:90.0,right:90.0,bottom:90.0,top:90.0),
                                  textStyle: const TextStyle(fontSize: 30),
                                ),
                                onPressed:onPressed,

                                child:Column(
                                  children:<Widget>[
                                    Text("LET'S",
                                      style: TextStyle(
                                          color:Color(0xFFFFFFFF),
                                          fontSize:19
                                      ),
                                    ),
                                    Text('GET STARTED',
                                      style: TextStyle(
                                          color:Color(0xFFFFFFFF),
                                          fontSize:19
                                      ),
                                    ),

                                    SizedBox(
                                      height: height* .02,
                                    ),

                                    Text('CLICK HERE',
                                      style: TextStyle(
                                          color:Color(0xFFFFFFFF),
                                          fontSize:15
                                      ),
                                    ),
                                  ],
                                ),

                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(
                        height: height* .01,
                      ),

                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: width* .13,
                          ),

                          ClipRRect(
                            borderRadius: BorderRadius.circular(200),
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
                                    padding: const EdgeInsets.only(left:0.0,right:0.0,bottom:0.0,top:0.0),
                                    textStyle: const TextStyle(fontSize: 20),
                                  ),
                                  onPressed:onPressed,
                                  child: const Text('',
                                    style: TextStyle(
                                        color:Color(0xFFFFFFFF),
                                        fontSize:22
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(
                            width: width* .02,
                          ),

                          ClipRRect(
                            borderRadius: BorderRadius.circular(200),
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
                                    //padding: const EdgeInsets.only(left:0.0,right:0.0,bottom:0.0,top:0.0),
                                    textStyle: const TextStyle(fontSize: 20),
                                  ),
                                  onPressed:onPressed,
                                  child: const Text('',
                                    style: TextStyle(
                                        color:Color(0xFFFFFFFF),
                                        fontSize:22
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(
                            width: width* .02,
                          ),

                          ClipRRect(
                            borderRadius: BorderRadius.circular(200),
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
                                    //padding: const EdgeInsets.only(left:0.0,right:0.0,bottom:0.0,top:0.0),
                                    textStyle: const TextStyle(fontSize: 20),
                                  ),
                                  onPressed:onPressed,
                                  child: const Text('',
                                    style: TextStyle(
                                        color:Color(0xFFFFFFFF),
                                        fontSize:22
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),


                      //GestureDetector(
                      //onTap:(){
                      // Navigator.pushNamed(context,LoginScreen.id);
                      //},
                      //child: const Text('Get Started',
                      //style: TextStyle(
                      //color: Color(0xFFFFFFFF),
                      //fontSize:22
                      //),
                      //),
                      //)
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}