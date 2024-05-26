

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:toktik/config/helpers/human_formats.dart';
import 'package:toktik/domain/entities/video_post.dart';

class VideoButtons extends StatelessWidget {
  final VideoPost video;

  const VideoButtons({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconButton(
          iconData: Icons.favorite, 
          iconColor: Colors.red, 
          value: video.view),
          const SizedBox(height: 15,),
          _CustomIconButton(iconData: Icons.remove_red_eye_outlined, value: video.likes),
          const SizedBox(height: 15,),
          SpinPerfect(
            infinite: true,
            duration: const Duration(seconds: 3),
            child: _CustomIconButton(iconData: Icons.play_circle_outline, value: 0),
            )
      ],
    );
  }
}

class _CustomIconButton extends StatelessWidget {
  
   final IconData iconData;
   final Color? colorButton;
   final int value;
  
  const _CustomIconButton({super.key, 
  required this.iconData, 
  required this.value,
  iconColor
  }):colorButton = iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: (){}, 
          icon: Icon(iconData, color: colorButton,size: 30,), 
        ),
        if(value> 0)
          Text(HumanFormats.humanReadbleNmber(value.toDouble()))
      ],
    );
  }
}