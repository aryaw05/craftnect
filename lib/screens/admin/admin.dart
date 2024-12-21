import 'package:craftnect_app/screens/admin/formIput.dart';
import 'package:flutter/material.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white, // Warna latar belakang utama
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 60,
              child: Center(
                child: Text(
                  "Halaman Admin",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceBetween, // Mengatur posisi teks dan tombol
                children: [
                  const Text(
                    "Tambah Produk Baru",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      // Menavigasi ke halaman tambah produk baru
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AddProductPage(),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.add, // Ikon plus
                      size: 30,
                      color: Colors.deepPurple, // Warna ikon
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Wrap(
                alignment:
                    WrapAlignment.center, // Memusatkan elemen di dalam Wrap
                children: [
                  SizedBox(
                    child: Row(
                      mainAxisAlignment:
                          MainAxisAlignment.center, // Memusatkan elemen Row
                      children: [
                        Card(
                          elevation: 3,
                          child: Container(
                            // Lebar card
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment
                                  .start, // Mengatur seluruh isi kolom ke kiri
                              children: [
                                Image.asset(
                                  'assets/sample.jpg',
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                                const SizedBox(height: 8),
                                const Text(
                                  'Sample Product',
                                  textAlign:
                                      TextAlign.left, // Membuat teks rata kiri
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Text(
                                  '\$0.0',
                                  textAlign:
                                      TextAlign.left, // Membuat teks rata kiri
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
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
