import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PembayaranView extends StatelessWidget {
  const PembayaranView({super.key});

  @override
  Widget build(BuildContext context) {
    final total = Get.arguments['total']; // Ambil data total harga

    return Scaffold(
      body: Stack(
        children: [
          // Background menggunakan asset
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/background.jpg'), // Path ke asset lokal
                fit: BoxFit.cover, // Mengatur gambar agar menyesuaikan layar
              ),
            ),
          ),
          // Konten utama
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Total yang harus dibayar: Rp $total',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors
                        .white, // Pastikan teks terlihat di atas background
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    _showPaymentDialog(
                        context, 'Silahkan scan QR untuk membayar.');
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
                    "Bayar dengan QR",
                    style: TextStyle(
                      color: Colors.brown,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    _showPaymentDialog(context, 'Silahkan bayar ke kasir.');
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
                    "Bayar dengan Cash",
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

  void _showPaymentDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Informasi Pembayaran'),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
