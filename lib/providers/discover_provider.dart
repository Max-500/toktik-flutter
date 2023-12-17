import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/domain/repositories/video_posts_repository.dart';

class DiscoverProvider extends ChangeNotifier {
  final VideoPostRepository repository;
  bool initialLoading = true;
  List<VideoPost> listVideos = [];

  DiscoverProvider({required this.repository});

  Future<void> loadingNextPage() async {
    final List<VideoPost> newVideos = await repository.getTrendingVideosByPage(1);
    listVideos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}