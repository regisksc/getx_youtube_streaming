import 'package:dartz/dartz.dart';

import '../../../../infrastructure/domain/error/failures.dart';
import '../../domain/entities/video_entity.dart';
import '../../domain/repositories/youtube_repository_contract.dart';
import '../datasources/youtube_datasource.dart';

class YoutubeRepository implements YoutubeRepositoryContract {
  final YoutubeDataSource datasource;

  YoutubeRepository({required this.datasource});
  @override
  Stream<Either<Failure, List<VideoEntity>>> keepFetchingMostPopVideos(List<String> categories) async* {
    yield* datasource.streamVideos().map((event) => event.fold(
          (failure) => Left(failure),
          (success) => Right(
            success.map((video) => video.toEntity).toList(),
          ),
        ));
  }
}
