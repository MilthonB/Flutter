// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';


class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20.0)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Text('Hola mundo', 
            style: TextStyle(
              color: Colors.black
            ),
            ),
          ),
        ),
        const SizedBox( height: 5,),
        // TODO: Imagen 
        _ImageBubble(),
        const SizedBox( height: 10,),
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ClipRRect(
      child: Image.network('https://yesno.wtf/assets/no/9-dc99c0e3c066b28d3a12262692cd5432.gif',
      width: size.width *.7,
      height: 150,
      fit: BoxFit.cover,
      loadingBuilder: (context, child, loadingProgress) {
        if(loadingProgress == null) return child;
        return Container(
          width: size.width *.7,
          height: 150,
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: const Text('Cliente esta enviando una imagen'),
        );
      },
      ),
      borderRadius: BorderRadius.circular(20),
      
      );
  }
}


