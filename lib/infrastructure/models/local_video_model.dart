import 'package:toktik/domain/entities/video_post.dart';

class LocalVideoPostModel {
  final String name;
  final String videoUrl;
  final int likes;
  final int views;

  LocalVideoPostModel({ required this.name, required this.videoUrl, this.likes = 0, this.views = 0 });

  factory LocalVideoPostModel.fromJsonMap(Map<String, dynamic> json) => LocalVideoPostModel(
    name: json['name'] ?? 'no name', videoUrl: json['videoUrl'], likes: json['likes'] ?? 0, views: json['views'] ?? 0
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "videoUrl": videoUrl,
    "likes": likes,
    "views": views
  };

  VideoPost toVideoPostEntity () => VideoPost(caption: name, videoUrl: videoUrl, likes: likes, views: views);
}
