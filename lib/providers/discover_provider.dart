import 'package:flutter/material.dart';
import 'package:tok_tik/domain/entities/video_post.dart';
import 'package:tok_tik/domain/repositories/video_posts_repository.dart';

class DiscoverProvider extends ChangeNotifier {
  final VideoPostsRepository videoPostsRepository;

  bool initialLoading = true;
  List<VideoPost> videos = [];

  DiscoverProvider({required this.videoPostsRepository});

  Future<void> loadNextPage() async {
    final newVideos = await videoPostsRepository.getVideoPostsByPage(1);
    videos.addAll(newVideos);
    initialLoading = false;

    notifyListeners();
  }
}
