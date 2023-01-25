import 'package:flutter/material.dart';
import 'package:flutter_begin/DetayliGridView/Filmler.dart';

class filmDetay extends StatefulWidget {
  Filmler film;
  filmDetay(this.film);

  @override
  State<filmDetay> createState() => _filmDetayState();
}

class _filmDetayState extends State<filmDetay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.film.film_adi),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Card(
              child: Image.asset("filmResimler/${widget.film.film_resim_adi}"),
            ),
            Text(
              "${widget.film.film_fiyat} \u{20BA}",
              style: const TextStyle(fontSize: 48, color: Colors.blue),
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    textStyle: const TextStyle(color: Colors.white)),
                child: const Text("Kirala"),
                onPressed: () {
                  print("${widget.film.film_adi} Kiralandı.");
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
