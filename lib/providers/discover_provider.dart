import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/infrastructure/models/local_video_model.dart';
import 'package:toktik/shared/data/local_video_posts.dart';

class DiscoverProvider extends ChangeNotifier {
  bool initialLoading = true;
  List<VideoPost> listVideos = [];

  Future<void> loadingNextPage() async {
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts.map(
      (video) =>  LocalVideoPostModel.fromJsonMap(video).toVideoPostEntity()
    ).toList();

    listVideos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}