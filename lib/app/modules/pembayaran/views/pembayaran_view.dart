import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PembayaranView extends StatelessWidget {
  const PembayaranView({super.key});

  @override
  Widget build(BuildContext context) {
    final total = Get.arguments['total']; // Ambil data total harga

    return Scaffold(
      appBar: AppBar(
        title: const Text('Metode Pembayaran'),
        centerTitle: true,
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Total yang harus dibayar: Rp $total',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Tambahkan logika pembayaran
              },
              child: const Text("Bayar Sekarang"),
            ),
          ],
        ),
      ),
    );
  }
}
