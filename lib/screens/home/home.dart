import 'package:craftnect_app/screens/users/profile.dart';
import 'package:flutter/material.dart';
// import 'produk.dart';
import '../users/chart.dart';
// import 'profil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'CraftNect',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfilPage(),
                  ),
                );
              },
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/icon/logo_profil.png'),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 0.75,
              ),
              itemCount: 4,
              itemBuilder: (context, index) {
                return GestureDetector(
                  // onTap: () {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => const ProdukPage(),
                  //     ),
                  //   );
                  // },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: const Icon(Icons.image,
                              size: 50, color: Colors.grey),
                        ),
                        const Spacer(),
                        const Text('Desain 1',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        const SizedBox(height: 8),
                        const Text('Rp. 5.000.000',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        const SizedBox(height: 8),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 100.0,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 142, 142),
          border: Border(
              top: BorderSide(color: Color.fromARGB(255, 255, 177, 177))),
        ),
        child: BottomNavigationBar(
          items: [
            const BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/icon/logo_home.png'),
                size: 64.0,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ChartPage(),
                    ),
                  );
                },
                child: const ImageIcon(
                  AssetImage('assets/icon/logo_keranjang.png'),
                  size: 64.0,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfilPage(),
                    ),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: ImageIcon(
                    AssetImage('assets/icon/logo_profil.png'),
                    size: 56.0,
                  ),
                ),
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
