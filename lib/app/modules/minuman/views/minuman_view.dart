import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/minuman_controller.dart';

class MinumanView extends GetView<MinumanController> {
  const MinumanView({super.key});

  @override
  Widget build(BuildContext context) {
    // Data menu makanan
    final items = [
      {'image': 'assets/banana_chocolate.png', 'name': 'Banana Coklat', 'price': 'Rp 18.000'},
      {'image': 'assets/tofu_crispy.png', 'name': 'Tahu Crisby', 'price': 'Rp 15.000'},
      {'image': 'assets/donut.png', 'name': 'Donat', 'price': 'Rp 8.000'},
      {'image': 'assets/indomie_rocket.png', 'name': 'Indomie Roket', 'price': 'Rp 18.000'},
      {'image': 'assets/nachos.png', 'name': 'Nachos', 'price': 'Rp 22.000'},
      {'image': 'assets/pancake.png', 'name': 'Pancake', 'price': 'Rp 25.000'},
      {'image': 'assets/sandwich.png', 'name': 'Sandwich', 'price': 'Rp 20.000'},
      {'image': 'assets/pizza.png', 'name': 'Pizza Slice', 'price': 'Rp 30.000'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Minuman'),
        centerTitle: true,
        backgroundColor: Colors.brown[700],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    GridView.builder(
                      physics: const NeverScrollableScrollPhysics(), // Non-scrollable karena di dalam SingleChildScrollView
                      shrinkWrap: true,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.7,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                      ),
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        final item = items[index];
                        return Card(
                          color: const Color(0xFF432818),
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                                  child: Image.asset(
                                    item['image']!,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      item['name']!,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      item['price']!,
                                      style: const TextStyle(fontSize: 14, color: Colors.orange),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown[700],
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
              onPressed: () {
                Get.back(); // Navigasi kembali menggunakan GetX
              },
              child: const Text('Kembali', style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
