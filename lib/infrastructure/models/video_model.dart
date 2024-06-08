import 'package:toktik/domain/entities/video_post.dart';

class VideoModel {
  final String name;
  final String url;
  final int likes;
  final int views;

  VideoModel({
    required this.name,
    required this.url,
    required this.likes,
    required this.views,
  });

  factory VideoModel.fromMap(Map<String, dynamic> data) => VideoModel(
        name: data['name'] ?? 'Unknown',
        url: data['videoUrl'] ?? '',
        likes: data['likes'] ?? 0,
        views: data['views'] ?? 0,
      );

  VideoPost toEntity() => VideoPost(
        caption: name,
        videoUrl: url,
        likes: likes,
        views: views,
      );
}
