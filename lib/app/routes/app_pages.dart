import 'package:get/get.dart';

import '../modules/deskripsi/bindings/deskripsi_binding.dart';
import '../modules/deskripsi/views/deskripsi_view.dart';
import '../modules/front_page/bindings/front_page_binding.dart';
import '../modules/front_page/views/front_page_view.dart';
import '../modules/homepage/bindings/homepage_binding.dart';
import '../modules/homepage/views/homepage_view.dart';
import '../modules/keranjang/bindings/keranjang_binding.dart';
import '../modules/keranjang/views/keranjang_view.dart';
import '../modules/makanan/bindings/makanan_binding.dart';
import '../modules/makanan/views/makanan_view.dart';
import '../modules/minuman/bindings/minuman_binding.dart';
import '../modules/minuman/views/minuman_view.dart';
import '../modules/order/bindings/order_binding.dart';
import '../modules/order/views/order_view.dart';
import '../modules/pembayaran/bindings/pembayaran_binding.dart';
import '../modules/pembayaran/views/pembayaran_view.dart';
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
    GetPage(
      name: _Paths.MAKANAN,
      page: () => const MakananView(),
      binding: MakananBinding(),
    ),
    GetPage(
      name: _Paths.MINUMAN,
      page: () => const MinumanView(),
      binding: MinumanBinding(),
    ),
    GetPage(
      name: _Paths.DESKRIPSI,
      page: () => const DeskripsiView(),
      binding: DeskripsiBinding(),
    ),
    GetPage(
      name: _Paths.KERANJANG,
      page: () => const KeranjangView(),
      binding: KeranjangBinding(),
    ),
    GetPage(
      name: _Paths.PEMBAYARAN,
      page: () => const PembayaranView(),
      binding: PembayaranBinding(),
    ),
  ];
}
