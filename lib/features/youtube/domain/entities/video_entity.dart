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
  // VideoEntity copyWith({
  //   String? id,
  //   String? title,
  //   String? thumbnailUrl,
  //   String? channelTitle,
  // }) {
  //   return VideoEntity(
  //     id: id ?? this.id,
  //     title: title ?? this.title,
  //     thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
  //     channelTitle: channelTitle ?? this.channelTitle,
  //   );
  // }

  // Map<String, dynamic> toMap() {
  //   return {
  //     'id': id,
  //     'title': title,
  //     'thumbnailUrl': thumbnailUrl,
  //     'channelTitle': channelTitle,
  //   };
  // }

  // factory VideoEntity.fromMap(Map<String, dynamic> map) {
  //   return VideoEntity(
  //     id: map['id'],
  //     title: map['title'],
  //     thumbnailUrl: map['thumbnailUrl'],
  //     channelTitle: map['channelTitle'],
  //   );
  // }

  // String toJson() => json.encode(toMap());

  // factory VideoEntity.fromJson(String source) => VideoEntity.fromMap(json.decode(source));
}
