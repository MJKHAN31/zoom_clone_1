import 'package:flutter/material.dart';
import 'package:zoom_clone/utils/colors.dart';

class CustomButton extends StatelessWidget{
  String text;
  final Function() onPressed;
  CustomButton(this.text, this.onPressed);

  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(100.0),
      child: ElevatedButton(
          onPressed: (){
            onPressed();
          },
          child: Text(
              text,
          style: const TextStyle(fontSize: 24,
          fontWeight: FontWeight.bold),),
        style: ElevatedButton.styleFrom(
          primary: buttonColor,
          minimumSize: const Size(double.infinity, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: const BorderSide(color: buttonColor)
          )
        ),
      ),
    );
  }
}