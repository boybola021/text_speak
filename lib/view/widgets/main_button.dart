



import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final double height;
  final double width;
  final double fontSize;
  const MainButton({super.key,
    required this.onPressed,
    required this.text,
     this.height = 110,
     this.width = 200,
     this.fontSize = 35,
  });

  @override
  Widget build(BuildContext context) {
    return  DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.cyanAccent,
      ),
      child: SizedBox(
        height: height,
        width: width,
        child: MaterialButton(
          onPressed: onPressed,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child:  Text(text,style:  TextStyle(fontSize: fontSize,fontWeight: FontWeight.w700),),
        ),
      ),
    );
  }
}
