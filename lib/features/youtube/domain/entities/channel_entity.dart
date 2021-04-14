import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'video_entity.dart';

class ChannelEntity extends Equatable {
  final String id;
  final String title;
  final String profilePictureUrl;
  final String subscriberCount;
  final String videoCount;
  final String uploadPlaylistId;
  List<VideoEntity> videos;

  ChannelEntity({
    required this.id,
    required this.title,
    required this.profilePictureUrl,
    required this.subscriberCount,
    required this.videoCount,
    required this.uploadPlaylistId,
    required this.videos,
  });

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [
        id,
        title,
        profilePictureUrl,
        subscriberCount,
        videoCount,
        uploadPlaylistId,
        videos,
      ];
  // ChannelEntity copyWith({
  //   String? id,
  //   String? title,
  //   String? profilePictureUrl,
  //   String? subscriberCount,
  //   String? videoCount,
  //   String? uploadPlaylistId,
  //   List<VideoEntity>? videos,
  // }) => ChannelEntity(
  //     id: id ?? this.id,
  //     title: title ?? this.title,
  //     profilePictureUrl: profilePictureUrl ?? this.profilePictureUrl,
  //     subscriberCount: subscriberCount ?? this.subscriberCount,
  //     videoCount: videoCount ?? this.videoCount,
  //     uploadPlaylistId: uploadPlaylistId ?? this.uploadPlaylistId,
  //     videos: videos ?? this.videos,
  //   );

  // Map<String, dynamic> toMap() => {
  //     'id': id,
  //     'title': title,
  //     'profilePictureUrl': profilePictureUrl,
  //     'subscriberCount': subscriberCount,
  //     'videoCount': videoCount,
  //     'uploadPlaylistId': uploadPlaylistId,
  //     'videos': videos?.map((x) => x.toMap())?.toList(),
  //   };

  // factory ChannelEntity.fromMap(Map<String, dynamic> map) => ChannelEntity(
  //     id: map['id'],
  //     title: map['title'],
  //     profilePictureUrl: map['profilePictureUrl'],
  //     subscriberCount: map['subscriberCount'],
  //     videoCount: map['videoCount'],
  //     uploadPlaylistId: map['uploadPlaylistId'],
  //     videos: List<VideoEntity>.from(map['videos']?.map((x) => VideoEntity.fromMap(x))),
  //   );

  // String toJson() => json.encode(toMap());

  // factory ChannelEntity.fromJson(String source) => ChannelEntity.fromMap(json.decode(source));
}
