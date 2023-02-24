import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zoom_clone/Widgets/custom_button.dart';
import 'package:zoom_clone/resources/auth_method.dart';

class LoginScreen extends StatefulWidget{
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AuthMethod _authMethods = AuthMethod();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Start or join a meeting",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
           CustomButton('Google Sign In',() async {
             bool res = await _authMethods.signInWithGoogle(context);
             if(res){
               Navigator.pushNamed(context, '/home');
             }
           })
        ],
      ),
    );
  }
}