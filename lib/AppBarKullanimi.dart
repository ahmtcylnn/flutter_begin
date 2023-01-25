import 'package:flutter/material.dart';

class AppBarKullanimi extends StatelessWidget {
  const AppBarKullanimi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                "Başlık",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              const Text("Alt Başlık",
                  style: TextStyle(color: Colors.white, fontSize: 13))
            ],
          ),
          centerTitle: false,
          leading: IconButton(
            tooltip: "Menu Icon",
            icon: const Icon(Icons.dehaze),
            onPressed: () {
              print("Menü Icon Tıklandı.");
            },
          ),
          actions: [
            ElevatedButton(
                onPressed: () {
                  print("Çıkış Tıklandı");
                },
                child: const Text(
                  "Çıkış",
                  style: TextStyle(color: Colors.white),
                )),
            IconButton(
              tooltip: "Bilgi",
              icon: const Icon(Icons.info_outline),
              onPressed: () {
                print("Bilgi Tıklandı.");
              },
            ),
            PopupMenuButton(
              child: const Icon(Icons.more_vert),
              itemBuilder: (context) => [
                const PopupMenuItem(
                  // ignore: sort_child_properties_last
                  child: Text(
                    "Sil",
                    style: TextStyle(color: Colors.red),
                  ),
                  value: 1,
                ),
                const PopupMenuItem(
                  value: 2,
                  child: Text(
                    "Güncelle",
                    style: TextStyle(color: Colors.blue),
                  ),
                )
              ],
              onSelected: (menuItemValue) {
                if (menuItemValue == 1) {
                  print("Sil tıklandı.");
                }
                if (menuItemValue == 2) {
                  print("Güncelle tıklandı.");
                }
              },
            )
          ]),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [],
      )),
    );
  }
}
