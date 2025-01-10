import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/keranjang_controller.dart';

class KeranjangView extends GetView<KeranjangController> {
  const KeranjangView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF3e2723), // Warna coklat tua
        title: const Text(
          "Keranjang",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Daftar item di keranjang
            Expanded(
              child: ListView(
                children: [
                  KeranjangItem(
                    title: "Hot Red Velvet",
                    price: "Rp 20.000",
                    quantity: 1,
                    imagePath: "assets/images/red.jpg",
                  ),
                  KeranjangItem(
                    title: "Coffee Aren",
                    price: "Rp 17.000",
                    quantity: 1,
                    imagePath: "assets/images/coffe.jpg",
                  ),
                  KeranjangItem(
                    title: "Tahu Crisby",
                    price: "Rp 15.000",
                    quantity: 1,
                    imagePath: "assets/images/tahu.jpg",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            // Informasi total harga
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.brown[50],
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.brown.shade200),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  Text(
                    "Jumlah Keranjang: Rp 50.000",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text("PPN: 2%"),
                  SizedBox(height: 4),
                  Text("Jumlah Total: Rp 51.000"),
                ],
              ),
            ),
            const SizedBox(height: 16),
            // Tombol aksi
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Logika tombol kembali
                      Get.back();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Colors.brown[700], // Warna latar belakang
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text("Kembali"),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigasi ke metode pembayaran dengan total harga
                      Get.toNamed('/pembayaran', arguments: {'total': 51000});
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.brown[700],
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text("Bayar"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Widget untuk item keranjang
class KeranjangItem extends StatelessWidget {
  final String title;
  final String price;
  final int quantity;
  final String imagePath;

  const KeranjangItem({
    super.key,
    required this.title,
    required this.price,
    required this.quantity,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.only(bottom: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            // Gambar produk
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                imagePath, // Ganti dengan URL gambar
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16),
            // Detail produk
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    price,
                    style: TextStyle(color: Colors.brown[700]),
                  ),
                ],
              ),
            ),
            // Tombol kuantitas
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    // Logika pengurangan jumlah
                  },
                  icon: const Icon(Icons.remove),
                ),
                Text(quantity.toString()),
                IconButton(
                  onPressed: () {
                    // Logika penambahan jumlah
                  },
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
