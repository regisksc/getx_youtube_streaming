import 'package:dartz/dartz.dart';

import '../../../../infrastructure/domain/error/failures.dart';
import '../../domain/entities/video_entity.dart';
import '../../domain/repositories/youtube_repository_contract.dart';

class YoutubeRepository implements YoutubeRepositoryContract {
  @override
  Stream<Either<Failure, List<VideoEntity>>> keepFetchingMostPopVideos(List<String> categories) async* {}
}
