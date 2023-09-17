import 'package:flutter/material.dart';
import '../constants.dart';

class CustomTextField extends StatelessWidget
{
  final String hint;
  final IconData icon;
  String _errorMessage(String str)
  {
    switch(hint)
    {
      case 'Enter your name': return'Name is empty!';
      case 'Enter your email' : return'Email is empty!';
      case 'Enter your password' : return'Password is empty!';
    }
    return '';
  }
  const CustomTextField({super.key, required this.icon, required this.hint});
  @override
  Widget build(BuildContext context){

    return Padding(
      padding:const EdgeInsets.symmetric(horizontal: 30),
      child: TextFormField (

        cursorColor:kSecondaryColor,
        decoration: InputDecoration(
            hintText:
              hint,
           hintStyle: const TextStyle(color:Color(0xFF9B9B9B),fontSize:14) ,
          prefixIcon: Icon(
            icon,
            color:  kSecondaryColor ,
          ),
          filled: true,
          fillColor:  kThirdColor,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(
                  color: Colors.black54
              )
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(
                  color: Colors.black54
              )
          ),
          border:OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(
                  color: Colors.black54
              )
          )
        ),
      ),
    );
  }
}