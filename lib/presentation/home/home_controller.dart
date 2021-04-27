import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:get/get.dart';

import '../../features/youtube/domain/entities/video_entity.dart';
import '../../features/youtube/domain/usecases/keep_fetching_most_popular_videos_usecase.dart';
import '../../infrastructure/domain/error/failures.dart';
import '../../infrastructure/domain/states/screen_state.dart';

class HomeController extends GetxController {
  @override
  Future onInit() async {
    super.onInit();
    await 500.milliseconds.delay();
    openVideoStream();
  }

  StreamSubscription<Either<Failure, List<VideoEntity>>>? videoStream;
  List<VideoEntity> videos = <VideoEntity>[].obs;
  void cancelVideoStream() => videoStream?.cancel();

  ScreenState streamState = ScreenState.idle;

  void openVideoStream() {
    final usecase = Get.find<KeepFetchingVideosForCategoryListUsecase>();
    usecase(['music', 'games']).listen(
      (yieldedResult) {
        yieldedResult.fold(
          (failure) => cancelVideoStream(),
          (videos) {
            videos.forEach((element) => element.title);
            this.videos = videos;
          },
        );
      },
    );
  }
}
