

import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/infrastructure/models/local_video_model.dart';
import 'package:toktik/shared/data/local_video_post.dart';

class DiscoverProvider extends ChangeNotifier{

  bool initialLoading = true; 
  List<VideoPost> videos = [];

  //todo: repository, datasource

  Future<void> LoadNextPage() async {


    final List<VideoPost> newVideos = videoPosts.map( 
      (video) => LocalVideoModel.fromJson(video).toVideoPostEntity()
      ).toList(); 

      videos.addAll(newVideos);
      initialLoading = false;
    //todo: cargar videos

    notifyListeners();

  } 


}


