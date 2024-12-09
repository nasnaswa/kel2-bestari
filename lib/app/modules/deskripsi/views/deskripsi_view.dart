import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/deskripsi_controller.dart';

class DeskripsiView extends GetView<DeskripsiController> {
  const DeskripsiView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DeskripsiView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DeskripsiView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
