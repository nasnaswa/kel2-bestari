import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/modules/order/views/order_view.dart';
import 'app/modules/front_page/views/front_page_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bestari Cafe',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // Initial route
      initialRoute: '/frontPage',
      // Routes mapping
      getPages: [
        GetPage(
          name: '/frontPage',
          page: () => const FrontPageView(),
        ),
        GetPage(
          name: '/order',
          page: () => const OrderView(),
        ),
        // Tambahkan rute lain jika diperlukan
      ],
    );
  }
}
