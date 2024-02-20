import 'package:tok_tik/domain/datasources/video_posts_datasource.dart';
import 'package:tok_tik/domain/entities/video_post.dart';
import 'package:tok_tik/infrastructure/models/local_video_model.dart';

// Local Video Posts
import 'package:tok_tik/shared/data/local_video_posts.dart';

class LocalVideoImpl implements VideoPostsDataSource {
  @override
  Future<List<VideoPost>> getVideoPostsByPage(int page) async {
    await Future.delayed(const Duration(seconds: 2));
    final List<VideoPost> newVideos =
        videoPosts.map((e) => LocalVideoModel.fromJson(e).toEntity()).toList();
    return newVideos;
  }

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userId) {
    // TODO: implement getFavoriteVideosByUser
    throw UnimplementedError();
  }
}
