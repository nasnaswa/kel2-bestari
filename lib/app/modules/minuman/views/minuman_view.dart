import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/minuman_controller.dart';

class MinumanView extends GetView<MinumanController> {
  const MinumanView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MinumanView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MinumanView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
