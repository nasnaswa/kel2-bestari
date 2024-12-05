import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/pemesan_controller.dart';

class PemesanView extends GetView<PemesanController> {
  const PemesanView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PemesanView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'PemesanView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}