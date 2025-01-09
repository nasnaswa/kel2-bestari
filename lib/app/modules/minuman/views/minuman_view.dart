import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/minuman_controller.dart';

class MinumanView extends GetView<MinumanController> {
  const MinumanView({super.key});

  @override
  Widget build(BuildContext context) {
    // Data menu makanan
    final items = [
      {'image': 'assets/images/Berry Tea.jpg', 'name': 'Berry Tea', 'price': 'Rp 15.000'},
      {'image': 'assets/images/Coffe Aren.jpg', 'name': 'Coffe Aren', 'price': 'Rp 17.000'},
      {'image': 'assets/images/Coffe Latte.jpg', 'name': 'Coffe Latte', 'price': 'Rp 18.000'},
      {'image': 'assets/images/Coffe Pandan.jpg', 'name': 'Coffe Pandan', 'price': 'Rp 16.000'},
      {'image': 'assets/images/Coffe Susu.jpg', 'name': 'Coffe Susu', 'price': 'Rp 16.000'},
      {'image': 'assets/images/Espresso.jpg', 'name': 'Espresso', 'price': 'Rp 15.000'},
      {'image': 'assets/images/Hot Coffe Latte.jpg', 'name': 'Hot Coffe Latte', 'price': 'Rp 18.000'},
      {'image': 'assets/images/Peach Coffe.jpg', 'name': 'Peach Coffe', 'price': 'Rp 19.000'},
      {'image': 'assets/images/Peach Tea.jpg', 'name': 'Peach Tea', 'price': 'Rp 17.000'},
      {'image': 'assets/images/red.jpg', 'name': 'Hot Coffe Peach', 'price': 'Rp 17.000'},
      {'image': 'assets/images/Strawberry Fields.jpg', 'name': 'Strawberry Fields', 'price': 'Rp 18.000'},
      {'image': 'assets/images/Yakult Berry.jpg', 'name': 'Yakult Berry', 'price': 'Rp 19.000'},
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
