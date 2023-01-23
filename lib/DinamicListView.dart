import 'package:flutter/material.dart';

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
            return Card(
              shadowColor: Colors.grey,
              elevation: 5.0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 50,
                  child: Row(
                    children: [
                      Text(ulkeler[indeks]),
                    ],
                  ),
                ),
              ),
            );
          },
        ));
  }
}
