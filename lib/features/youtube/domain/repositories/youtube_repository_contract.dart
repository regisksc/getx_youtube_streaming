import 'package:dartz/dartz.dart';

import '../../../../infrastructure/domain/error/failures.dart';
import '../entities/video_entity.dart';

abstract class YoutubeRepositoryContract {
  Stream<Either<Failure, List<VideoEntity>>> keepFetchingVideosForCategoryList(List<String> categories);
}
