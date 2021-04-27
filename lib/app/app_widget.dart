import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app_bindings.dart';
import 'app_routes.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.red),
        getPages: AppPages.pages,
        initialRoute: Routes.home,
        initialBinding: AppBinding(),
      );
}
