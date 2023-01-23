import 'package:flutter/material.dart';

class DinamicGridView extends StatelessWidget {
  var ulkeler = ["Türkiye", "Almanya", "İtalya", "Rusya", "Çin"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dinamik Grid View"),
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2 / 1,
          ),
          itemCount: ulkeler.length,
          itemBuilder: (context, indeks) {
            return Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(ulkeler[indeks]),
                ],
              ),
            );
          }),
    );
  }
}
