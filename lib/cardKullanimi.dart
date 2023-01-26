import 'package:flutter/material.dart';

class cardKullanimi extends StatefulWidget {
  const cardKullanimi({super.key});

  @override
  State<cardKullanimi> createState() => _cardKullanimiState();
}

class _cardKullanimiState extends State<cardKullanimi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Column(
        children: const [
          Text("Card Kullanımı"),
        ],
      )),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 300,
            child: Card(
              color: Colors.deepOrangeAccent,
              elevation: 10.0,
              shadowColor: Colors.deepOrangeAccent,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    topLeft: Radius.circular(30)),
                side: BorderSide(width: 5, color: Colors.black),
              ),
              child: Center(
                  child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Toplam Puan",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.purpleAccent,
                        ),
                        const Text(
                          "150",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              )),
            ),
          )
        ],
      )),
    );
  }
}
