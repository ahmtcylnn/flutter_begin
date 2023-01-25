import 'package:flutter/material.dart';
import 'package:flutter_begin/DetayliListView/Yemekler.dart';

class foodDetailsPage extends StatefulWidget {
  Yemekler yemek;
  foodDetailsPage(this.yemek);
  @override
  State<foodDetailsPage> createState() => _foodDetailsPageState();
}

class _foodDetailsPageState extends State<foodDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.yemek.yemek_adi),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("resimler/${widget.yemek.yemek_resim_adi}"),
            // ignore: prefer_const_constructors
            Text(
              "${widget.yemek.yemek_fiyat} \u{20BA}",
              style: const TextStyle(fontSize: 20, color: Colors.blue),
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                onPressed: (() {
                  print("${widget.yemek.yemek_adi} Sipariş Verildi.");
                }),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                child: const Text("Sipariş Ver"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
