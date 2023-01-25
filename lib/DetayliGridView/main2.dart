import 'package:flutter/material.dart';
import 'package:flutter_begin/DetayliGridView/Filmler.dart';
import 'package:flutter_begin/DetayliGridView/filmDetay.dart';

class main2 extends StatefulWidget {
  const main2({super.key});

  @override
  State<main2> createState() => _main2State();
}

class _main2State extends State<main2> {
  Future<List<Filmler>> filmGetir() async {
    var filmListesi = <Filmler>[];
    var film1 = Filmler(1, "Anadoluda", "anadoluda.png", 49.99);
    var film2 = Filmler(2, "Django", "django.png", 59.99);
    var film3 = Filmler(3, "Inception", "inception.png", 44.99);
    var film4 = Filmler(4, "The HateFul Eight", "thehatefuleight.png", 29.99);
    var film5 = Filmler(5, "Interstellar", "interstellar.png", 39.99);
    var film6 = Filmler(6, "The Pianist", "thepianist.png", 49.99);

    filmListesi.add(film1);
    filmListesi.add(film2);
    filmListesi.add(film3);
    filmListesi.add(film4);
    filmListesi.add(film5);
    filmListesi.add(film6);

    return filmListesi;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Filmler"),
      ),
      body: FutureBuilder<List<Filmler>>(
        future: filmGetir(),
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            var filmListesi = snapshot.data;

            return GridView.builder(
                itemCount: filmListesi!.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2 / 3.5,
                ),
                itemBuilder: ((context, index) {
                  var film = filmListesi[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => filmDetay(film))));
                    },
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                                "filmResimler/${film.film_resim_adi}"),
                          ),
                          Text(
                            film.film_adi,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "${film.film_fiyat} \u{20BA}",
                            style: const TextStyle(
                                fontSize: 14, color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  );
                }));
          } else {
            return Column();
          }
        }),
      ),
    );
  }
}
