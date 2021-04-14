import 'dart:convert';

class VideoModel {
  final String id;
  final String title;
  final String thumbnailUrl;
  final String channelTitle;
  const VideoModel({
    required this.id,
    required this.title,
    required this.thumbnailUrl,
    required this.channelTitle,
  });

  Map<String, dynamic> toMap() => {
        'id': id,
        'title': title,
        'thumbnailUrl': thumbnailUrl,
        'channelTitle': channelTitle,
      };

  factory VideoModel.fromMap(Map<String, dynamic> map) => VideoModel(
        id: map['id'],
        title: map['title'],
        thumbnailUrl: map['thumbnailUrl'],
        channelTitle: map['channelTitle'],
      );

  String toJson() => json.encode(toMap());

  factory VideoModel.fromJson(String source) => VideoModel.fromMap(json.decode(source));

  @override
  String toString() => 'VideoModel(id: $id, title: $title, thumbnailUrl: $thumbnailUrl, channelTitle: $channelTitle)';
}
