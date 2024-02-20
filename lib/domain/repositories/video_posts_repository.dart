import 'package:tok_tik/domain/entities/video_post.dart';

abstract class VideoPostsRepository {
  Future<List<VideoPost>> getVideoPostsByPage(int page);

  Future<List<VideoPost>> getFavoriteVideosByUser(String userId);
}
