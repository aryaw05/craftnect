import 'package:flutter/material.dart';

class AddProductPage extends StatelessWidget {
  AddProductPage({super.key});

  // Controller untuk menangkap input pengguna
  final TextEditingController nameController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController quantityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Nama Barang",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: 'Masukkan nama barang',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                "Harga Barang",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              TextField(
                controller: priceController,
                keyboardType: TextInputType.number, // Input hanya angka
                decoration: InputDecoration(
                  hintText: 'Masukkan harga barang',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                "Jumlah Barang",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              TextField(
                controller: quantityController,
                keyboardType: TextInputType.number, // Input hanya angka
                decoration: InputDecoration(
                  hintText: 'Masukkan jumlah barang',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity, // Tombol memenuhi lebar layar
                child: ElevatedButton.icon(
                  onPressed: () {
                    // Aksi ketika tombol disubmit
                    final name = nameController.text;
                    final price = priceController.text;
                    final quantity = quantityController.text;

                    print('Nama Barang: $name');
                    print('Harga Barang: $price');
                    print('Jumlah Barang: $quantity');

                    // Lakukan validasi atau pengiriman data ke backend
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Data berhasil ditambahkan!')),
                    );
                  },
                  icon: const Icon(Icons.save),
                  label: const Text('Submit'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white,
                    iconColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    textStyle: const TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
