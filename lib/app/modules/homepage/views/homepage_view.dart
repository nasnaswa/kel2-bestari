import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/modules/makanan/views/makanan_view.dart';
import 'package:myapp/app/modules/minuman/views/minuman_view.dart';
import 'package:myapp/app/modules/deskripsi/views/deskripsi_view.dart';
import 'package:myapp/app/modules/keranjang/views/keranjang_view.dart';

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

class HomepageView extends StatefulWidget {
  const HomepageView({super.key});

  @override
  State<HomepageView> createState() => _HomepageViewState();
}

class _HomepageViewState extends State<HomepageView> {
  final TextEditingController _searchController = TextEditingController();

  final List<Map<String, String>> _menuItems = [
    {
      "title": "Berry Tea",
      "price": "Rp 15.000",
      "imageUrl": "assets/images/Berry Tea.jpg"
    },
    {
      "title": "Coffe Aren",
      "price": "Rp 17.000",
      "imageUrl": "assets/images/Coffe Aren.jpg"
    },
    {
      "title": "Coffe Latte",
      "price": "Rp 18.000",
      "imageUrl": "assets/images/Coffe Latte.jpg"
    },
    {
      "title": "Coffe Pandan",
      "price": "Rp 16.000",
      "imageUrl": "assets/images/Coffe Pandan.jpg"
    },
    {
      "title": "Coffe Susu",
      "price": "Rp 16.000",
      "imageUrl": "assets/images/Coffe Susu.jpg"
    },
    {
      "title": "Espresso",
      "price": "Rp 15.000",
      "imageUrl": "assets/images/Espresso.jpg"
    },
    {
      "title": "Hot Coffe Latte",
      "price": "Rp 18.000",
      "imageUrl": "assets/images/Hot Coffe Latte.jpg"
    },
    {
      "title": "Peach Coffe",
      "price": "Rp 19.000",
      "imageUrl": "assets/images/Peach Coffe.jpg"
    },
    {
      "title": "Peach Tea",
      "price": "Rp 17.000",
      "imageUrl": "assets/images/Peach Tea.jpg"
    },
    {
      "title": "Hot Coffe Peach",
      "price": "Rp 17.000",
      "imageUrl": "assets/images/red.jpg"
    },
    {
      "title": "Strawberry Fields",
      "price": "Rp 18.000",
      "imageUrl": "assets/images/Strawberry Fields.jpg"
    },
    {
      "title": "Yakult Berry",
      "price": "Rp 19.000",
      "imageUrl": "assets/images/Yakult Berry.jpg"
    },
    {
      "title": "Bronis",
      "price": "Rp 7.000",
      "imageUrl": "assets/images/bronis.jpg"
    },
    {
      "title": "Pisang Goreng",
      "price": "Rp 5.000",
      "imageUrl": "assets/images/pisang.jpg"
    },
    {
      "title": "Bolu",
      "price": "Rp 8.000",
      "imageUrl": "assets/images/bolu.jpg"
    },
    {
      "title": "Donat",
      "price": "Rp 8.000",
      "imageUrl": "assets/images/donat.jpg"
    },
    {
      "title": "Indomie Kare",
      "price": "Rp 10.000",
      "imageUrl": "assets/images/miekare.jpg"
    },
    {
      "title": "Indomie Roket",
      "price": "Rp 10.000",
      "imageUrl": "assets/images/mieroket.jpg"
    },
    {
      "title": "Otak-Otak",
      "price": "Rp 5.000",
      "imageUrl": "assets/images/otak-otak.jpg"
    },
    {
      "title": "Tahu Goreng",
      "price": "Rp 5.000",
      "imageUrl": "assets/images/tahu.jpg"
    },
    {
      "title": "Sempol",
      "price": "Rp 5.000",
      "imageUrl": "assets/images/sempol.jpg"
    }
  ];

  List<Map<String, String>> _filteredMenuItems = [];

  @override
  void initState() {
    super.initState();
    _filteredMenuItems = _menuItems; // Awalnya tampilkan semua menu
    _searchController.addListener(_filterMenu);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _filterMenu() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      _filteredMenuItems = _menuItems
          .where((menu) => menu["title"]!.toLowerCase().contains(query))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[700],
        title: const Text("IT'S COFFEE TIME!",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back), // Ikon panah <
          onPressed: () {
            Navigator.of(context).pop(); // Kembali ke halaman sebelumnya
          },
        ),
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
                    controller: _searchController,
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
              itemCount: _filteredMenuItems.length,
              itemBuilder: (context, index) {
                return CoffeeMenuCard(
                  title: _filteredMenuItems[index]["title"]!,
                  price: _filteredMenuItems[index]["price"]!,
                  imageUrl: _filteredMenuItems[index]["imageUrl"]!,
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
