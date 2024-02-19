import 'package:flutter/material.dart';
import 'package:tok_tik/domain/entities/video_post.dart';
import 'package:tok_tik/models/local_video_model.dart';
import 'package:tok_tik/shared/data/local_video_posts.dart';

class DiscoverProvider extends ChangeNotifier {
  // TODO: Repository, Data Source

  bool initialLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {
    final List<VideoPost> newVideos =
        videoPosts.map((e) => LocalVideoModel.fromJson(e).toEntity()).toList();
    videos.addAll(newVideos);
    initialLoading = false;

    notifyListeners();
  }
}
