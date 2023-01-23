import 'package:flutter/material.dart';

class SbtGridViewKullanimi extends StatefulWidget {
  const SbtGridViewKullanimi({super.key});

  @override
  State<SbtGridViewKullanimi> createState() => _SbtGridViewKullanimiState();
}

class _SbtGridViewKullanimiState extends State<SbtGridViewKullanimi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid View Kullanımı"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 2 / 1,
        children: [
          GestureDetector(
            onTap: () {
              print("Güneş Tıklandı");
            },
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.wb_sunny),
                  Text("Güneş"),
                ],
              ),
            ),
          ),
          Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.brightness_2),
                Text("Ay"),
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.star),
                Text("Yıldız"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
