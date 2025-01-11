import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/modules/homepage/views/homepage_view.dart';
import '../controllers/pemesan_controller.dart';

class PemesanView extends GetView<PemesanController> {
  const PemesanView({super.key});

  @override
  Widget build(BuildContext context) {
    // Controller untuk mendapatkan input dari TextField
    final TextEditingController nameController = TextEditingController();

    return Scaffold(
      body: Stack(
        children: [
          // Background dengan warna cokelat solid
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/background.jpg'), // Ganti dengan path aset gambar Anda
                fit: BoxFit.cover, // Menyesuaikan gambar dengan layar
              ),
            ),
          ),
          // Konten
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Nama Pemesan",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                // Input Field untuk Nama Pemesan
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(255, 247, 247, 247),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // Tombol Lanjut
                ElevatedButton(
                  onPressed: () {
                    final name = nameController.text;
                    if (name.isEmpty) {
                      Get.snackbar("Peringatan", "Nama pemesan harus diisi!");
                    } else {
                      Get.snackbar(
                        "Info",
                        "Halo, $name! Silahkan lanjutkan pemesanan.",
                        backgroundColor: Colors.white,
                        colorText: Colors.black,
                      );
                      Get.to(() => const HomepageView());
                      // Navigasi ke halaman berikutnya jika diperlukan
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 15),
                  ),
                  child: const Text(
                    "Lanjut",
                    style: TextStyle(
                      color: Colors.brown,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Tombol kembali di pojok kiri atas
          Positioned(
            top: 40, // Posisi dari atas
            left: 10, // Posisi dari kiri
            child: IconButton(
              onPressed: () {
                Get.back(); // Kembali ke halaman sebelumnya
              },
              icon: const Icon(
                Icons.arrow_back_ios, // Ikon panah ke kiri
                color: Colors.white, // Warna ikon
              ),
            ),
          ),
        ],
      ),
    );
  }
}
