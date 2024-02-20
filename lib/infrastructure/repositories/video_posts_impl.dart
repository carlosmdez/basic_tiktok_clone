import 'package:tok_tik/domain/datasources/video_posts_datasource.dart';
import 'package:tok_tik/domain/entities/video_post.dart';
import 'package:tok_tik/domain/repositories/video_posts_repository.dart';

class VideoPostsImpl implements VideoPostsRepository {
  final VideoPostsDataSource videoPostsDataSource;

  VideoPostsImpl({required this.videoPostsDataSource});

  @override
  Future<List<VideoPost>> getVideoPostsByPage(int page) {
    return videoPostsDataSource.getVideoPostsByPage(page);
  }

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userId) {
    // TODO: implement getFavoriteVideosByUser
    throw UnimplementedError();
  }
}
