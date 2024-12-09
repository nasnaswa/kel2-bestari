import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/modules/makanan/views/makanan_view.dart';

void main() {
  runApp(const CoffeeApp());
}

class CoffeeApp extends StatelessWidget {
  const CoffeeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const HomepageView(),
    );
  }
}

class HomepageView extends StatelessWidget {
  const HomepageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[800],
        title: const Text(
          "IT'S COFFEE TIME!",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              // Logika ke keranjang
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Pencarian dan filter
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Cari di sini",
                      prefixIcon: const Icon(Icons.search),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  icon: const Icon(Icons.filter_alt),
                  color: Colors.brown[700],
                  onPressed: () {
                    // Logika filter
                  },
                ),
              ],
            ),
            const SizedBox(height: 16),
            // Tombol kategori (Minuman & Makanan)
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.brown[700],
                      side: BorderSide(color: Colors.brown[700]!),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Get.to(() => const MinumanView());// Logika kategori Minuman
                    },
                    child: const Text("Minuman"),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.brown[700],
                      side: BorderSide(color: Colors.brown[700]!),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Get.to(() => const MakananView());// Logika kategori Makanan
                    },
                    child: const Text("Makanan"),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            // Judul "Best Seller"
            const Text(
              "Best Seller",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            // Daftar menu (GridView)
            GridView.builder(
              shrinkWrap: true, // Membatasi tinggi agar tidak konflik dengan SingleChildScrollView
              physics: const NeverScrollableScrollPhysics(), // Disable scrolling pada GridView
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 0.75,
              ),
              itemCount: 4, // Sesuaikan jumlah item
              itemBuilder: (context, index) {
                return CoffeeMenuCard(
                  title: index == 0
                      ? "Hot Red Velvet"
                      : index == 1
                          ? "Peach Coffee"
                          : index == 2
                              ? "Banana Coklat"
                              : "Sempol",
                  price: index == 0
                      ? "Rp 20.000"
                      : index == 1
                          ? "Rp 17.000"
                          : index == 2
                              ? "Rp 18.000"
                              : "Rp 15.000",
                  imageUrl: "https://via.placeholder.com/150", // Ganti dengan URL asli
                );
              },
            ),
            const SizedBox(height: 16),
            // Tombol "Semua Menu"
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown[700],
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  // Logika untuk semua menu
                },
                child: const Text(
                  "Semua Menu",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget kartu untuk menu kopi
class CoffeeMenuCard extends StatelessWidget {
  final String title;
  final String price;
  final String imageUrl;

  const CoffeeMenuCard({
    super.key,
    required this.title,
    required this.price,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
            child: Image.network(
              imageUrl,
              height: 120,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(
                  price,
                  style: TextStyle(color: Colors.brown[600]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
