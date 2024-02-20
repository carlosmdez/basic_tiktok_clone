import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tok_tik/infrastructure/datasources/local_video_impl.dart';
import 'package:tok_tik/infrastructure/repositories/video_posts_impl.dart';
import 'package:tok_tik/providers/discover_provider.dart';
import 'package:tok_tik/theme/app_theme.dart';
import 'package:tok_tik/screens/discover/discover_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final VideoPostsImpl videoPostsImpl =
        VideoPostsImpl(videoPostsDataSource: LocalVideoImpl());

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          lazy: false,
          create: (_) => DiscoverProvider(videoPostsRepository: videoPostsImpl)
            ..loadNextPage(),
        ),
      ],
      child: MaterialApp(
          title: 'TokTik',
          theme: AppTheme().getTheme(),
          home: const DiscoverScreen()),
    );
  }
}
