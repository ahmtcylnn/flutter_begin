import 'package:flutter/material.dart';

class FutureBuilderList extends StatefulWidget {
  const FutureBuilderList({super.key});

  @override
  State<FutureBuilderList> createState() => _FutureBuilderListState();
}

class _FutureBuilderListState extends State<FutureBuilderList> {
  Future<List<String>> verileriGetir() async {
    var ulkeListesi = ["Türkiye", "Almanya", "İtalya", "Rusya", "Çin"];
    return ulkeListesi;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Future Builder Listeleme"),
      ),
      body: FutureBuilder<List<String>>(
        future: verileriGetir(),
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            var ulkeListesi = snapshot.data;

            return ListView.builder(
                itemCount: ulkeListesi!.length,
                itemBuilder: ((context, indeks) {
                  return SizedBox(
                    height: 120,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 5,
                        shadowColor: Colors.grey,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Center(child: Text(ulkeListesi[indeks])),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }));
          } else {
            return const Center();
          }
        }),
      ),
    );
  }
}
