


import 'package:toktik/domain/entities/video_post.dart';

class LocalVideoModel{

  final String name;
  final String videoUrl;
  final int like;
  final int views;

  LocalVideoModel({
    required this.name, 
    required this.videoUrl, 
    required this.like, 
    required this.views
    });

  factory LocalVideoModel.fromJson(Map<String,dynamic> json){
    return LocalVideoModel(
      name: json['name'] ?? 'No name' , 
      videoUrl: json['videoUrl'] ?? 'No video Uuurl', 
      like: json['likes'] ?? 0, 
      views: json['views']?? 0
      );
  } 

  VideoPost toVideoPostEntity() => VideoPost(
    caption: name, 
    videoUrl: videoUrl,
    likes: like,
    view: views
    );

}