import 'package:flutter/material.dart';

import 'DetailsPage.dart';

class YatayListViewScroll extends StatefulWidget {
  const YatayListViewScroll({super.key});

  @override
  State<YatayListViewScroll> createState() => _YatayListViewScrollState();
}

class _YatayListViewScrollState extends State<YatayListViewScroll> {
  var ulkeler = [
    "Türkiye",
    "Almanya",
    "İtalya",
    "Rusya",
    "Çin",
    "Hollanda",
    "Danimarka",
    "Brezilya",
    "Fas",
    "İran"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Yatay ListView Scroll"),
        ),
        body: SizedBox(
          height: 120,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: ulkeler.length,
            itemBuilder: (context, indeks) {
              return GestureDetector(
                onTap: () {
                  //print("${ulkeler[indeks]} seçildi.");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => DetailsPage(
                                ulkeAdi: ulkeler[indeks],
                              ))));
                },
                child: Card(
                  shadowColor: Colors.grey,
                  elevation: 5.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 120,
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              print("Text ile ${ulkeler[indeks]} seçildi.");
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text(
                                ulkeler[indeks],
                              ),
                            ),
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
                            onSelected: (menuItemValue) {
                              if (menuItemValue == 1) {
                                print("${ulkeler[indeks]} silindi.");
                              }
                              if (menuItemValue == 2) {
                                print("${ulkeler[indeks]} güncellendi.");
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ));
  }
}
