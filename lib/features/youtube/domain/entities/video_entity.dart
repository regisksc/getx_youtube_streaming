import 'package:equatable/equatable.dart';

class VideoEntity extends Equatable {
  final String id;
  final String title;
  final String thumbnailUrl;
  final String channelTitle;
  const VideoEntity({
    required this.id,
    required this.title,
    required this.thumbnailUrl,
    required this.channelTitle,
  });

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [id, title, thumbnailUrl, channelTitle];
}
