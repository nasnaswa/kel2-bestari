import 'package:get/get.dart';

import '../modules/front_page/bindings/front_page_binding.dart';
import '../modules/front_page/views/front_page_view.dart';
import '../modules/homepage/bindings/homepage_binding.dart';
import '../modules/homepage/views/homepage_view.dart';
import '../modules/order/bindings/order_binding.dart';
import '../modules/order/views/order_view.dart';
import '../modules/pemesan/bindings/pemesan_binding.dart';
import '../modules/pemesan/views/pemesan_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.FRONT_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.FRONT_PAGE,
      page: () => const FrontPageView(),
      binding: FrontPageBinding(),
    ),
    GetPage(
      name: _Paths.ORDER,
      page: () => const OrderView(),
      binding: OrderBinding(),
    ),
    GetPage(
      name: _Paths.PEMESAN,
      page: () => const PemesanView(),
      binding: PemesanBinding(),
    ),
    GetPage(
      name: _Paths.HOMEPAGE,
      page: () => const HomepageView(),
      binding: HomepageBinding(),
    ),
  ];
}
