import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../constants.dart';


class dash extends StatelessWidget {

  static String id = 'dash';
  const dash({super.key});



  @override
  Widget build(BuildContext context) {
    double height= MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.width;
    return Scaffold(
      //backgroundColor:kmainColor,
        backgroundColor:kSecondaryColor,
      //backgroundColor: Colors.white,



      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(10, 30, 10, 10),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[

                  //decoration: BoxDecoration(
                    //borderRadius: BorderRadius.circular(100),
                    //color: Theme.of(context).primaryColor.withAlpha(50),
                  //),

                  Text(
                    'Today',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontFamily: 'Bebas',
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(
                    'Jul 8, 2023',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontFamily: 'Bebas',
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                SizedBox(
                  height: height* .01 ,
                ),

                  //const Icon(
                    //Icons.directions_walk,color:Color(0xFFFFFFFF),
                    //size: 40,
                 // ),
                  //child: Image.asset(
                    //'images/icons/walking.gif',
                    //width: 30,
                  //),

                Padding(
                  padding: EdgeInsets.only(top: 30),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10.0),
                  width: 250, //ancho
                  height: 250, //largo tambien por numero height: 300
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment
                            .bottomCenter, //cambia la iluminacion del degradado
                        end: Alignment.topCenter,
                        colors: [Color(0xFF0D47A1),Color(0xFF1976D2),Color(0xFF42A5F5)],
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(27.0),
                        bottomRight: Radius.circular(27.0),
                        topLeft: Radius.circular(27.0),
                        topRight: Radius.circular(27.0),
                      )),
                  child: new CircularPercentIndicator(
                    radius: 200.0,
                    lineWidth: 13.0,
                    animation: true,
                    center: Container(
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 50,
                            width: 50,
                            padding: EdgeInsets.only(left: 2.0,top:40.0),
                            child:const Icon(
                              Icons.directions_walk,color:Color(0xFFFFFFFF),
                              size: 40,
                            ),
                            //child: Icon(
                              //Icons.walking,
                              //size: 30.0,
                              //color: Colors.white,
                            //),
                          ),
                          SizedBox(
                            height: height* .05 ,
                          ),
                          Container(
                            //color: Colors.orange,
                            child: Text(
                              '9000',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30.0,
                                  color: Colors.white),
                            ),
                            // height: 50.0,
                            // width: 50.0,
                          ),
                        ],
                      ),
                    ),
                    percent: 0.217,
                    //percent: _convert,
                    footer: new Text(
                      "Steps: 9000",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0,
                          color: Colors.white),
                    ),
                    circularStrokeCap: CircularStrokeCap.round,
                    progressColor: Colors.greenAccent,
                  ),
                ),



                //Text(
                  //'9000',
                  //style: TextStyle(
                   // color: Theme.of(context).primaryColor,
                   // fontSize: 80,
                    //fontFamily: 'Bebas',
                   // fontWeight: FontWeight.bold,
                 // ),
               // ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: <Widget>[
                      //Row(
                       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //children: <Widget>[
                         // Text(
                           // '0 Steps'.toUpperCase(),
                            //style: TextStyle(
                             // color: Colors.grey,
                           // ),
                         // ),
                          //Text(
                            //'9000 Steps'.toUpperCase(),
                            //style: TextStyle(
                            //  color: Colors.grey,
                           // ),
                         // ),
                       // ],
                      //),
                      //LinearPercentIndicator(
                       // lineHeight: 8.0,
                       // percent: 0.7,
                        //linearStrokeCap: LinearStrokeCap.roundAll,
                       // backgroundColor:
                       // Theme.of(context).colorScheme.secondary.withAlpha(30),
                       // progressColor: Theme.of(context).primaryColor,
                      //),
                      Padding(
                        padding: EdgeInsets.only(top: 30),
                      ),
                      //Text(
                       // 'Steps Taken'.toUpperCase(),
                        //style: TextStyle(
                          //color: Theme.of(context).colorScheme.secondary,
                          //fontFamily: 'Bebas',
                         // fontSize: 24,
                         // fontWeight: FontWeight.bold,
                       // ),
                     // ),
                      //Text(
                        //'You walked 165 min today',
                        //style: TextStyle(
                          //color: Theme.of(context).colorScheme.secondary,
                         // fontSize: 16,
                        //),
                      //),
                    ],
                  ),
                ),

                SizedBox(
                  height: height* .01 ,
                ),
                Divider(
                  height: 25,
                  color: Colors.grey[400],
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: width* .1 ,
                      ),

                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[

                            SizedBox(
                              width: width* .05 ,
                            ),

                            //Text(
                              //'DISTANCE',
                              //style: TextStyle(
                                //color: Color(0xFF818181),
                                //fontSize: 15,
                                //fontWeight: FontWeight.bold,
                              //),
                            //),

                            const Image(
                                image: AssetImage('images/icons/dis2.png')
                            ),

                            SizedBox(
                              height: height* .02 ,
                            ),


                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: '8500',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color:Color(0xFF818181) ,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' m',
                                    style: TextStyle(
                                      color: Color(0xFF0055e1),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        width: width* .1 ,
                      ),

                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Icon(
                              Icons.access_time,color:Color(0xFF0055e1),
                              size: 31,
                            ),
                            //Text(
                              //'STEPS TAKEN',
                              //style: TextStyle(
                                //color: Color(0xFF818181),
                                //fontSize: 15,
                                //fontWeight: FontWeight.bold,
                              //),
                            //),
                            SizedBox(
                              height: height* .015 ,
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: '165',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color:Color(0xFF818181) ,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' min',
                                    style: TextStyle(
                                      color: Color(0xFF0055e1),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        width: width* .1 ,
                      ),

                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              width: width* .02 ,
                            ),

                            //Text(
                              //'HEART RATE',
                              //style: TextStyle(
                               // color:Color(0xFF818181) ,
                                //fontSize: 15,
                              //  fontWeight: FontWeight.bold,
                             // ),
                           // ),

                            const Image(
                                image: AssetImage('images/icons/pulse2.png')
                            ),

                            SizedBox(
                              width: width* .0 ,
                            ),

                            SizedBox(
                              height: height* .015 ,
                            ),

                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: '102',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color:Color(0xFF818181),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' bpm',
                                    style: TextStyle(
                                      color:Color(0xFF0055e1) ,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Divider(
                  height: 25,
                  color: Colors.grey[400],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:<Widget>[
               // SizedBox(
                  //width: width* .02 ,
                //),
                Row(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children:<Widget>[
                    const Icon(
                      Icons.location_on,color:Colors.red,
                      size: 32,
                    ),
                    SizedBox(
                      width: width* .02 ,
                    ),
                    GestureDetector(
                      //onTap:(){
                       // Navigator.pushNamed(context,Model.id);
                      //},
                      child: const Text('Event Location',
                        style: TextStyle(
                            color:Color(0xFF818181) ,
                            fontWeight: FontWeight.bold,
                            fontSize:15
                        ),
                      ),


                    ),
                  ],
                ),
              ],
            ),

                const Image(
                    image: AssetImage('images/icons/map.gif')
                ),

            ],
          ),
        ),
      ),
    ),
    );
  }

  FlatButton({required Null Function() onPressed, required Stack child}) {}
}

class StatCard extends StatelessWidget {
  final String title;
  final double total;
  final double achieved;
  final Image image;
  final Color color;

  const StatCard({
    required Key key,
    required this.title,
    required this.total,
    required this.achieved,
    required this.image,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          // Colors.grey[200],
           color: Colors.grey.shade200,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                title.toUpperCase(),
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary.withAlpha(100),
                  fontSize: 14,
                ),
              ),
              achieved < total
                  ? Image.asset(
                'images/icons/down_orange.png',
                width: 20,
              )
                  : Image.asset(
                'images/icons/up_red.png',
                width: 20,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 25),
          ),
          CircularPercentIndicator(
            radius: 80.0,
            lineWidth: 8.0,
            percent: achieved / (total < achieved ? achieved : total),
            circularStrokeCap: CircularStrokeCap.round,
            center: image,
            progressColor: color,
            backgroundColor: Theme.of(context).colorScheme.secondary.withAlpha(30),
          ),
          Padding(
            padding: EdgeInsets.only(top: 25),
          ),
          RichText(
            text: TextSpan(children: [
              TextSpan(
                text: achieved.toString(),
                style: TextStyle(
                  fontSize: 20,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              TextSpan(
                text: ' / $total',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}