import 'package:get/get.dart';
import '../../features/youtube/data/datasources/youtube_datasource.dart';
import '../../features/youtube/data/repositories/youtube_repository.dart';
import '../../features/youtube/domain/usecases/keep_fetching_most_popular_videos_usecase.dart';
import 'home_controller.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
    Get.lazyPut(() => YoutubeDataSource(http: Get.find<GetConnect>()));
    Get.lazyPut(() => YoutubeRepository(datasource: Get.find<YoutubeDataSource>()));
    Get.lazyPut(() => KeepFetchingVideosForCategoryListUsecase(Get.find<YoutubeRepository>()));
  }
}
