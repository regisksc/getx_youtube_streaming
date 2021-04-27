import 'package:get/get.dart';

import '../presentation/home/home_bindings.dart';
import '../presentation/home/home_page.dart';

abstract class Routes {
  static const home = 'home';
}

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.home,
      page: () => HomePage(),
      bindings: [HomeBindings()],
    ),
  ];
}
