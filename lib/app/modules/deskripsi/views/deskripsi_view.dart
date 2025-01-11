import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DeskripsiView extends StatelessWidget {
  const DeskripsiView({super.key});

  @override
  Widget build(BuildContext context) {
    int quantity = 1; // Variabel lokal untuk jumlah
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Detail Menu',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.brown[700],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Container(
              width: 300,
              decoration: BoxDecoration(
                color: const Color(0xFFE8D5C4),
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
                    child: Image.asset(
                      'assets/images/Berry Tea.jpg', // Ganti dengan URL gambar Anda
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            'Berry Tea',
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF5A3826),
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Center(
                          child: Text(
                            'Rp 20.000',
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF5A3826),
                            ),
                          ),
                        ),
                        const SizedBox(height: 4),
                        Center(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: List.generate(
                              5,
                              (index) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 20,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'Deskripsi',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF5A3826),
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'Berry Tea adalah minuman teh yang disajikan dengan campuran berbagai jenis buah beri, seperti stroberi, blueberry, raspberry, atau blackberry. Minuman ini memiliki rasa yang segar, manis, dan sedikit asam, menjadikannya pilihan sempurna untuk dinikmati dalam suasana santai atau untuk menyegarkan hari.',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF5A3826),
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                if (quantity > 1) quantity--;
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF5A3826),
                                shape: const CircleBorder(),
                                padding: const EdgeInsets.all(8),
                              ),
                              child: const Icon(Icons.remove, color: Colors.white),
                            ),
                            const SizedBox(width: 16),
                            Text(
                              '$quantity',
                              style: const TextStyle(
                                fontSize: 18,
                                color: Color(0xFF5A3826),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 16),
                            ElevatedButton(
                              onPressed: () {
                                quantity++;
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF5A3826),
                                shape: const CircleBorder(),
                                padding: const EdgeInsets.all(8),
                              ),
                              child: const Icon(Icons.add, color: Colors.white),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Center(
                          child: ElevatedButton.icon(
                            onPressed: () => Get.back(),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF5A3826),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 12),
                            ),
                            icon: const Icon(Icons.shopping_cart, color: Colors.white),
                            label: const Text(
                              'Kembali',
                              style: TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
