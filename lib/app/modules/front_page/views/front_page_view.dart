import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/front_page_controller.dart';

class FrontPageView extends GetView<FrontPageController> {
  const FrontPageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FrontPageView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'FrontPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
