import 'package:flutter/material.dart';


class  IntroThree extends StatelessWidget{
 const  IntroThree ({Key? key}) : super(key: key);

@override
Widget build(BuildContext context){
    return Center(
      child: Container(
        color: Colors.blueGrey,
         alignment: Alignment(0, 0),
        child: const Text("Let's goo"),
      ),
    );
  }
}