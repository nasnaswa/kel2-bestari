import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/front_page_controller.dart';

class FrontPageView extends GetView<FrontPageController> {
  const FrontPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background gradient
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFD2B48C), // cokelat terang
                  Color.fromRGBO(139, 69, 19, 1), // cokelat gelap
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          // Container(
          //   color: const Color.fromARGB(
          //       255, 170, 118, 49), // Warna cokelat polos (tan)
          // ),
          // Content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Bestari Cafe",
                  style: TextStyle(
                    fontFamily: "Serif",
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Urusan Coffee, Kunjungi Bestari",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: const Color.fromARGB(221, 255, 255, 255),
                  ),
                ),
                const SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/order'); // Sesuaikan jika ada rute berikutnya
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    child: Text(
                      "Next",
                      style: TextStyle(
                        color: Color.fromRGBO(139, 69, 19, 1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
