import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/modules/makanan/views/makanan_view.dart';
import 'package:myapp/app/modules/minuman/views/minuman_view.dart';
import 'package:myapp/app/modules/deskripsi/views/deskripsi_view.dart';
import 'package:myapp/app/modules/keranjang/views/keranjang_view.dart'; // Import KeranjangView

void main() {
  runApp(const CoffeeApp());
}

class CoffeeApp extends StatelessWidget {
  const CoffeeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
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
    // Daftar menu dipindahkan ke luar itemBuilder agar lebih efisien.
    final menuItems = [
      {
        "title": "Hot Red Velvet",
        "price": "Rp 20.000",
        "imageUrl": "assets/images/red.jpg"
      },
      {"title": "Peach Coffee", "price": "Rp 17.000", "imageUrl": ""},
      {"title": "Banana Coklat", "price": "Rp 18.000", "imageUrl": ""},
      {"title": "Sempol", "price": "Rp 15.000", "imageUrl": ""},
      {"title": "Capuccino", "price": "Rp 17.000", "imageUrl": ""},
      {"title": "Strawberry Field", "price": "Rp 18.000", "imageUrl": ""},
      {"title": "Peach Tea", "price": "Rp 18.000", "imageUrl": ""},
      {"title": "Hot Coffee Latte", "price": "Rp 20.000", "imageUrl": ""},
      {"title": "Bronis", "price": "Rp 6.000", "imageUrl": ""},
      {"title": "Donat", "price": "Rp 6.000", "imageUrl": ""},
    ];

    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[800],
        title: const Text(
          "IT'S COFFEE TIME!",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Pencarian
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
                  icon: const Icon(Icons.shopping_cart),
                  onPressed: () {
                    Get.to(() => const KeranjangView());
                  },
                ),
              ],
            ),
            const SizedBox(height: 16),
            // Kategori
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
                      Get.to(() => const MinumanView());
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
                      Get.to(() => const MakananView());
                    },
                    child: const Text("Makanan"),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Daftar Menu
            const Text(
              "All menu",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 0.75,
              ),
              itemCount: menuItems.length, // Sesuai panjang menuItems
              itemBuilder: (context, index) {
                return CoffeeMenuCard(
                  title: menuItems[index]["title"]!,
                  price: menuItems[index]["price"]!,
                  imageUrl: menuItems[index]["imageUrl"]!,
                  onTap: () {
                    Get.to(() => const DeskripsiView());
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CoffeeMenuCard extends StatelessWidget {
  final String title;
  final String price;
  final String imageUrl;
  final VoidCallback onTap;

  const CoffeeMenuCard({
    super.key,
    required this.title,
    required this.price,
    required this.imageUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(10)),
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
      ),
    );
  }
}
