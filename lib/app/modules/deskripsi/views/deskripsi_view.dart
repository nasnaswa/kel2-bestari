import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/deskripsi_controller.dart';

class DeskripsiView extends StatelessWidget {
  const DeskripsiView({super.key});

  @override
  Widget build(BuildContext context) {
    int quantity = 1; // Variabel lokal untuk jumlah
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Produk'),
        centerTitle: true,
        backgroundColor: Color(0xFF5A3826),
      ),
      body: Center(
        child: Container(
          width: 300,
          decoration: BoxDecoration(
            color: Color(0xFFE8D5C4),
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
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
                borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                child: Image.network(
                  'https://via.placeholder.com/300x200', // Ganti dengan URL gambar Anda
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
                        'Hot Red Velvet',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF5A3826),
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Center(
                      child: Text(
                        'Rp 20.000',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF5A3826),
                        ),
                      ),
                    ),
                    SizedBox(height: 4),
                    Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: List.generate(
                          5,
                          (index) => Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Deskripsi',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF5A3826),
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Minuman Hot Red Velvet memikat pembeli dengan paduan sempurna antara rasa lembut krim dan sentuhan manis cokelat merah yang menggoda.',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF5A3826),
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            if (quantity > 1) quantity--;
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF5A3826),
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(8),
                          ),
                          child: Icon(Icons.remove, color: Colors.white),
                        ),
                        SizedBox(width: 16),
                        Text(
                          '$quantity',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF5A3826),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 16),
                        ElevatedButton(
                          onPressed: () {
                            quantity++;
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF5A3826),
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(8),
                          ),
                          child: Icon(Icons.add, color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Center(
                      child: ElevatedButton.icon(
                        onPressed: () => Get.back(),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF5A3826),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                        ),
                        icon: Icon(Icons.shopping_cart, color: Colors.white),
                        label: Text(
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
    );
  }
}
