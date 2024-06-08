import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';

class FeedProvider extends ChangeNotifier {
  bool initialLoading = true;
  final List<VideoPost> videos = [];

  Future<void> loadNextPage() async {
    // TODO: load videos
    notifyListeners();
  }
}
