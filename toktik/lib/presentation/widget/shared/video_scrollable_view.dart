

import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/presentation/widget/shared/video/fullscreen_player.dart';
import 'package:toktik/presentation/widget/shared/video_player/video_buttons.dart';


class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos;
  const VideoScrollableView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(

      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final videoPost = videos[index];

        return Stack(
          children: [
            
            //FullScreenPlayer(videoUrl: videoPost.videoUrl),
            SizedBox.expand(child: FullscreenPlayer( captions: videoPost.caption, videoUrl: videoPost.videoUrl, ),),
            //video player + gradiente
            
            //botones
            Positioned(
              bottom: 40,
              right: 20,
              child: VideoButtons(video: videoPost)
              )

          ],
        );


      },
    );
  }
}




