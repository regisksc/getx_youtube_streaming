import 'dart:async';
import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/connect.dart';

import '../../../../infrastructure/domain/error/failures.dart';
import '../../../../shared/constants/api_constants.dart';
import '../models/video_model.dart';

class YoutubeDataSource {
  final GetConnect http;
  YoutubeDataSource({required this.http});
  static const String _baseUrl = 'https://www.googleapis.com';
  static const maxFetches = 3;

  Stream<Either<Failure, List<VideoModel>>> streamVideos() async* {
    print('start');
    try {
      final randomGenerator = Random();
      Response response = const Response();
      for (int i = 0; i < maxFetches; i++) {
        int nextRefreshIntervalInSeconds = 5;
        do {
          nextRefreshIntervalInSeconds = randomGenerator.nextInt(5);
        } while (nextRefreshIntervalInSeconds < 5);
        await Future.delayed(Duration(seconds: nextRefreshIntervalInSeconds));
        response = await _fetchVideos(response);
        print('Algo');
        yield* _yieldData(response);
      }
    } on Exception catch (e) {
      print(e);
    }
  }

  Stream<Either<Failure, List<VideoModel>>> _yieldData(Response response) async* {
    if (response.statusCode! >= 400) {
      yield Left(FetchErrorFailure());
    } else {
      final listOfVideoModels = (response.body as List).map((videoJson) => VideoModel.fromJson(videoJson)).toList();
      yield Right(listOfVideoModels);
    }
  }

  Future<Response> _fetchVideos(Response response) async => http.get(
        '$_baseUrl/youtube/v3/videos',
        query: {
          'part': 'snippet, contentDetails, statistics',
          'chart': 'mostPopular',
          'key': yt,
          'regionCode': 'US',
        },
      );
}
