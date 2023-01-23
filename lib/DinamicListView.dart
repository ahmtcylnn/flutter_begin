import 'package:flutter/material.dart';
import 'package:flutter_begin/DetailsPage.dart';

class DinamicListView extends StatefulWidget {
  const DinamicListView({super.key});

  @override
  State<DinamicListView> createState() => _DinamicListViewState();
}

class _DinamicListViewState extends State<DinamicListView> {
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
          title: const Text("Dinamik ListView Kullanımı"),
        ),
        body: ListView.builder(
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
                    height: 50,
                    child: Row(
                      children: [
                        GestureDetector(
                            onTap: () {
                              print("Text ile ${ulkeler[indeks]} seçildi.");
                            },
                            child: Text(ulkeler[indeks])),
                        const Spacer(),
                        TextButton(
                          // ignore: sort_child_properties_last
                          child: const Text(
                            "Ülke Seç",
                            style: TextStyle(color: Colors.red),
                          ),

                          onPressed: (() {
                            print("Buton ile ${ulkeler[indeks]} seçildi.");
                          }),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ));
  }
}
