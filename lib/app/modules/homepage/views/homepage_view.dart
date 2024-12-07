import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomepageController extends GetxController {
  // Tambahkan logika pengendalian jika diperlukan
}

class HomepageView extends GetView<HomepageController> {
  const HomepageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[800],
        title: const Text(
          "IT'S COFFEE TIME!",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.brown[100],
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Input pencarian dan filter
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Cari Menu...",
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
                  icon: Icon(Icons.filter_alt, color: Colors.brown[700]),
                  onPressed: () {
                    // Logika filter
                  },
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
            // GridView untuk menampilkan daftar menu
            Expanded(
              child: GridView.builder(
                itemCount: 4, // Sesuaikan jumlah item menu
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) {
                  return CoffeeMenuCard(
                    title: "Menu ${index + 1}",
                    price: "Rp ${20000 + index * 5000}",
                    imageUrl: "https://via.placeholder.com/150",
                  );
                },
              ),
            ),
          ],
        ),
      ),
      // Tombol untuk keranjang di bagian bawah
      bottomNavigationBar: BottomAppBar(
        color: Colors.brown[800],
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.brown[700],
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {
              // Logika untuk membuka keranjang
            },
            child: const Text(
              "Lihat Keranjang",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}

// Widget Kartu untuk Menu Kopi
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
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
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
