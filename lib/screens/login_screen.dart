import 'package:flutter/material.dart';
import 'package:flutter_application/screens/personas_screen.dart';
import 'package:flutter_application/screens/signup_screen.dart';
import '../constants.dart';
import '../widgets/custom_text_field.dart';

class LoginScreen extends StatelessWidget
{
  static String id='LoginScreen';
  const LoginScreen({super.key}) ;

  get children => null;
  get onPressed => null;

   @override
  Widget build(BuildContext context)
  {
    double height =MediaQuery.of(context).size.height;
    double width =MediaQuery.of(context).size.width ;

    return Scaffold(
      backgroundColor:kMainColor,
      body: ListView(
        children: <Widget>[
          Padding(
          padding: const EdgeInsets.only(top:30),
          child:SizedBox(
              height: MediaQuery.of(context).size.height*.3,
            child: Stack(
              alignment: Alignment.center,
            children: <Widget> [
              Column(
                children:[
              Row(
                children:[
                  SizedBox(
                  width: width* .01 ,
                  ),
              Row(
                children:[
              const Image(
                image: AssetImage('images/icons/arrow_32.png'),
              ),
                  SizedBox(
                    width: width* .02 ,
                  ),
                  const Text('Login',
                    style:TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 35
                    ),
                  ),
              ],
              ),
              ]
              ),
              SizedBox(
                height: height* 0.1 ,
              ),
             Column(
               children:const [
              Image(
                image: AssetImage('images/icons/96.png'),
              ),
              ]
              )
              ]
              )
             ],
            ),
           ),
          ),
            SizedBox(
              height: height* 0.06 ,
            ),
          const CustomTextField(icon: Icons.email, hint: 'Enter your email'),
          SizedBox(
            height: height* .02 ,
          ),
          const CustomTextField(icon: Icons.lock, hint: 'Enter your password'),
          SizedBox(
            height: height* .11 ,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              GestureDetector(
                onTap:(){
                  Navigator.pushNamed(context,PersonaScreen.id);
                },
             child:ClipRRect(
               borderRadius: BorderRadius.circular(15),
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
                    padding: const EdgeInsets.only(left:133.0,right:133.0,bottom:13.0,top:13.0),
                    textStyle: const TextStyle(fontSize: 30),
                  ),
                onPressed:onPressed,
                child: const Text('Login',
                  style: TextStyle(
                      color:Color(0xFFFFFFFF),
                      fontSize:22
                  ),
                 ),
                ),
               ],
              ),
             ),
            ),
            ],
          ),
          SizedBox(
            height: height* .04 ,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              const Text('Don\'t have an account?',
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                      fontSize: 16
                  ),
              ),
              SizedBox(
                width: width* .01 ,
              ),
              GestureDetector(
                onTap:(){
                  Navigator.pushNamed(context,SignupScreen.id);
                },
               child: const Text('Sign up',
                  style: TextStyle(
                     color: Color(0xFF0D80D9),
                         fontSize:22
              ),
              ),
              )
            ],
          )
        ],
       ),
    );
  }
}













