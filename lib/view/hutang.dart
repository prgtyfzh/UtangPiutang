import 'package:flutter/material.dart';

class Hutang extends StatelessWidget {
  const Hutang({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> dummyData = [
      'Hutang 1',
      'Hutang 2',
      'Hutang 3',
      'Hutang 4',
      'Hutang 5',
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Daftar Hutang',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: dummyData.length,
          itemBuilder: (context, index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Card(
                color: const Color(0xFF24675B),
                child: ListTile(
                  title: Text(
                    dummyData[index],
                    style: const TextStyle(color: Colors.white),
                  ),
                  subtitle: const Text(
                    'Deskripsi Hutang',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Tambahkan aksi yang diinginkan saat FAB ditekan
        },
        backgroundColor: const Color(0xFF24675B),
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
    );
  }
}
