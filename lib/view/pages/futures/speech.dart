

import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

class SpeechPage extends StatefulWidget {
  const SpeechPage({super.key});

  @override
  State<SpeechPage> createState() => _SpeechPageState();
}

class _SpeechPageState extends State<SpeechPage> {
  bool check = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: AvatarGlow(
        animate: check,
        repeat: true,
        duration: const Duration(milliseconds: 2000),
       curve: Curves.easeIn,
        startDelay: const Duration(milliseconds: 100),
        glowColor: Colors.grey,
        child:  CircleAvatar(
          backgroundColor: Colors.cyanAccent,
          radius: 45,
          child: InkWell(
              onTap: (){
               check = true;
               setState(() {});
              },
              child: const Icon(Icons.mic,size: 35,)),
        ),
      ),
      body: SizedBox(),
    );
  }
}
