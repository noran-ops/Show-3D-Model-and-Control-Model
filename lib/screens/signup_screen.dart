import 'package:flutter/material.dart';
import '../constants.dart';
import '../widgets/custom_text_field.dart';
import 'login_screen.dart';

class SignupScreen extends StatelessWidget
{
  static String id='SignupScreen';
  const SignupScreen({super.key});

  get children => null;
  get onPressed => null;

  @override
  Widget build(BuildContext context)
  {
    double height= MediaQuery.of(context).size.height;
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
                children: <Widget>[
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
                      const Text('Sign Up',
                        style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 35
                        ),
                      ),
                    ],
                  ),
                   ]
                  ),
                      SizedBox(
                        height: height* 0.08 ,
                      ),
                  Column(
                    children:[
                  const Image(
                    image: AssetImage('images/icons/person5_64.png'),
                  ),
                      SizedBox(
                        height: height* .02 ,
                      ),
                  const Text('Create an account',
                    style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize:26
                    ),
                  ),
                  ]
                  )
                  ]
                  )
                ]
              ),
            ),
          ),
          SizedBox(
            height: height* .05 ,
          ),
          const CustomTextField(icon: Icons.perm_identity, hint: 'Enter your name'),
          SizedBox(
            height: height* .02 ,
          ),
          const CustomTextField(icon: Icons.email, hint: 'Enter your email'),
          SizedBox(
            height: height* .02 ,
          ),
          const CustomTextField(icon: Icons.lock, hint: 'Enter your password'),
          SizedBox(
            height: height* .09 ,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
                GestureDetector(
                onTap:(){
                  Navigator.pushNamed(context,LoginScreen.id);
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
                            padding:EdgeInsets.only(left:131.0,right:131.0,bottom:13.0,top:13.0),
                            textStyle: const TextStyle(fontSize: 30),
                          ),
                          onPressed:onPressed,
                          child: const Text('Sign Up',
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
              const Text('Do have an account?',
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
                  Navigator.pushNamed(context,LoginScreen.id);
                },
                child: const Text('Login',
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