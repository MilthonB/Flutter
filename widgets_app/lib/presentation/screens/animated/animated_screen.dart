import 'package:flutter/material.dart';
import 'dart:math' show Random;
class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({super.key});

  static final name = 'animated_screen';

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {

  double width = 50;
  double height = 150;
  Color color = Colors.indigo;
  double borderRadius = 10.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animated Container'),),
      floatingActionButton: FloatingActionButton(
        onPressed: changeShape,
        child: const Icon(Icons.play_arrow),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          curve: Curves.elasticOut,
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(borderRadius)
          ),
        ),
      ),
    );
  }

  void changeShape(){
    final random = Random();


    width =  random.nextInt(300) + 150;
    height = random.nextInt(600) + 150;
    borderRadius = random.nextInt(100) + 20;

    color = Color.fromRGBO(random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
    //height

    setState(() {
      
    }); 
  }
}