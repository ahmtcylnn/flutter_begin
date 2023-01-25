import 'package:flutter/material.dart';
import 'package:flutter_begin/DetayliListView/FoodDetails.dart';
import 'package:flutter_begin/DetayliListView/Yemekler.dart';

class main1 extends StatefulWidget {
  const main1({super.key});

  @override
  State<main1> createState() => _main1State();
}

class _main1State extends State<main1> {
  Future<List<Yemekler>> yemekleriGetir() async {
    var yemekListesi = <Yemekler>[];

    var y1 = Yemekler(1, "Köfte", "kofte.png", 65.99);
    var y2 = Yemekler(2, "Ayran", "ayran.png", 10.99);
    var y3 = Yemekler(3, "Fanta", "fanta.png", 15.99);
    var y4 = Yemekler(4, "Makarna", "makarna.png", 45.99);
    var y5 = Yemekler(5, "Kadayıf", "kadayif.png", 55.99);
    var y6 = Yemekler(6, "Baklava", "baklava.png", 75.99);

    yemekListesi.add(y1);
    yemekListesi.add(y4);
    yemekListesi.add(y5);
    yemekListesi.add(y6);
    yemekListesi.add(y2);
    yemekListesi.add(y3);

    return yemekListesi;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Yemekler"),
      ),
      body: FutureBuilder<List<Yemekler>>(
        future: yemekleriGetir(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var yemekListesi = snapshot.data;

            return ListView.builder(
                itemCount: yemekListesi!.length,
                itemBuilder: ((context, index) {
                  var yemek = yemekListesi[index];

                  return Card(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) =>
                                    foodDetailsPage(yemek))));
                      },
                      child: Row(
                        children: [
                          SizedBox(
                              height: 150,
                              width: 150,
                              child: Image.asset(
                                  "resimler/${yemek.yemek_resim_adi}")),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                yemek.yemek_adi,
                                style: const TextStyle(fontSize: 25),
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              Text(
                                "${yemek.yemek_fiyat} \u{20BA}",
                                style: const TextStyle(
                                    fontSize: 20, color: Colors.blue),
                              )
                            ],
                          ),
                          const Spacer(),
                          const Icon(Icons.keyboard_arrow_right),
                        ],
                      ),
                    ),
                  );
                }));
          } else {
            return const Center();
          }
        },
      ),
    );
  }
}
