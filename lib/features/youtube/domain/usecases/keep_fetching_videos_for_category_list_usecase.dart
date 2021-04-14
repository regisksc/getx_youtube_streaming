import 'package:dartz/dartz.dart';

import '../../../../infrastructure/domain/error/failures.dart';
import '../../../../infrastructure/domain/usecase/usecase.dart';
import '../entities/video_entity.dart';
import '../repositories/youtube_repository_contract.dart';

class KeepFetchingVideosForCategoryListUsecase extends UsecaseOfStream<List<VideoEntity>, List<String>> {
  final YoutubeRepositoryContract repository;
  KeepFetchingVideosForCategoryListUsecase(this.repository);
  @override
  Stream<Either<Failure, List<VideoEntity>>> call(List<String> categories) async* {
    final stream = repository.keepFetchingVideosForCategoryList(categories);
    yield* stream;
  }
}
