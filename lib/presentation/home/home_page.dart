import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../infrastructure/domain/states/screen_state.dart';
import 'home_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key, this.title = 'Getx Youtube'}) : super(key: key);
  int _counter = 0;
  final String title;

  void _incrementCounter() => _counter++;

  final controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text(title)),
        body: Center(
          child: controller.streamState == ScreenState.idle ? _videosComponent() : const CircularProgressIndicator(),
        ),
      );

  Widget _videosComponent() => controller.videos.isEmpty
      ? const Text('Não foram encontrados videos')
      : ListView.separated(
          shrinkWrap: true,
          itemBuilder: (context, index) => Container(child: Center(child: Text(controller.videos[index].title))),
          separatorBuilder: (context, index) => const SizedBox(height: 40),
          itemCount: controller.videos.length,
        );
}
