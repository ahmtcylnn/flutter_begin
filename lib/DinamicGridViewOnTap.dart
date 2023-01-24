import 'package:flutter/material.dart';
import 'package:flutter_begin/DetailsPage.dart';

class DinamicGridViewOnTap extends StatelessWidget {
  var ulkeler = ["Türkiye", "Almanya", "İtalya", "Rusya", "Çin"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dinamic Grid View onTap"),
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2 / 1,
          ),
          itemCount: ulkeler.length,
          itemBuilder: ((context, indeks) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) =>
                          DetailsPage(ulkeAdi: ulkeler[indeks]))),
                );
              },
              child: Card(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        print("Text Tıklandı");
                      },
                      child: Text(ulkeler[indeks]),
                    ),
                    const Spacer(),
                    PopupMenuButton(
                      child: const Icon(Icons.more_vert),
                      itemBuilder: (context) => [
                        const PopupMenuItem(
                            value: 1,
                            child: Text(
                              "Sil",
                              style: TextStyle(color: Colors.red),
                            )),
                        const PopupMenuItem(
                            value: 2,
                            child: Text(
                              "Güncelle",
                              style: TextStyle(color: Colors.blue),
                            )),
                      ],
                      onSelected: (value) {
                        if (value == 1) {
                          print("Sil Tıklandı.");
                        }
                        if (value == 2) {
                          print("Güncelle Tıklandı.");
                        }
                      },
                    ),
                  ],
                ),
              )),
            );
          })),
    );
  }
}
