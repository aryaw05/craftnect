// import 'package:craftnect_app/screens/admin/formIput.dart';
// import 'package:flutter/material.dart';

// class AdminPage extends StatelessWidget {
//   const AdminPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.white, // Warna latar belakang utama
//       padding: const EdgeInsets.all(16.0),
//       child: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(
//               height: 60,
//               child: Center(
//                 child: Text(
//                   "Halaman Admin",
//                   style: TextStyle(
//                     fontSize: 18,
//                     color: Colors.black,
//                     decoration: TextDecoration.none,
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 16.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment
//                     .spaceBetween, // Mengatur posisi teks dan tombol
//                 children: [
//                   const Text(
//                     "Tambah Produk Baru",
//                     style: TextStyle(
//                       fontSize: 24,
//                       fontWeight: FontWeight.bold,
//                       decoration: TextDecoration.none,
//                     ),
//                   ),
//                   IconButton(
//                     onPressed: () {
//                       // Menavigasi ke halaman tambah produk baru
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => AddProductPage(),
//                         ),
//                       );
//                     },
//                     icon: const Icon(
//                       Icons.add, // Ikon plus
//                       size: 30,
//                       color: Colors.deepPurple, // Warna ikon
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Center(
//               child: Wrap(
//                 alignment:
//                     WrapAlignment.center, // Memusatkan elemen di dalam Wrap
//                 children: [
//                   SizedBox(
//                     child: Row(
//                       mainAxisAlignment:
//                           MainAxisAlignment.center, // Memusatkan elemen Row
//                       children: [
//                         Card(
//                           elevation: 3,
//                           child: Container(
//                             // Lebar card
//                             padding: const EdgeInsets.all(8.0),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment
//                                   .start, // Mengatur seluruh isi kolom ke kiri
//                               children: [
//                                 Image.asset(
//                                   'assets/sample.jpg',
//                                   height: 100,
//                                   fit: BoxFit.cover,
//                                 ),
//                                 const SizedBox(height: 8),
//                                 const Text(
//                                   'Sample Product',
//                                   textAlign:
//                                       TextAlign.left, // Membuat teks rata kiri
//                                   style: TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                                 const Text(
//                                   '\$0.0',
//                                   textAlign:
//                                       TextAlign.left, // Membuat teks rata kiri
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:craftnect_app/screens/admin/formIput.dart';
import 'package:flutter/material.dart';

class AdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Admin Page',
          style: TextStyle(
              color: Colors.black, fontFamily: 'Roboto', fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                // Menavigasi ke halaman tambah produk baru
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddProductPage(),
                  ),
                );
              },
              icon: Icon(Icons.add),
              label: Text('Tambah Barang'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white,
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.8,
                ),
                itemCount: 4, // Replace with dynamic item count
                itemBuilder: (context, index) {
                  return ItemCard();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
                ),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Desain I',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'Rp. 5.000.000',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.edit, color: Colors.orange),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete, color: Colors.red),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
