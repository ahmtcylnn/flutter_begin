import 'package:flutter/material.dart';

class SbtListViewKullanimi extends StatefulWidget {
  const SbtListViewKullanimi({super.key});

  @override
  State<SbtListViewKullanimi> createState() => _SbtListViewKullanimiState();
}

class _SbtListViewKullanimiState extends State<SbtListViewKullanimi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Kullanımı"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.wb_sunny),
            title: const Text("Güneş"),
            subtitle: const Text("Güneş alt başlık"),
            trailing: const Icon(Icons.arrow_right),
            onTap: () {
              print("Güneş Tıklandı.");
            },
          ),
          ListTile(
            leading: const Icon(Icons.brightness_2),
            title: const Text("Ay"),
            subtitle: const Text("Ay alt başlık"),
            trailing: const Icon(Icons.arrow_right),
            onTap: () {
              print("Ay Tıklandı.");
            },
          ),
          ListTile(
            leading: const Icon(Icons.star),
            title: const Text("Yıldız"),
            subtitle: const Text("Yıldız alt başlık"),
            trailing: const Icon(Icons.arrow_right),
            onTap: () {
              print("Yıldız Tıklandı.");
            },
          ),
          GestureDetector(
            onTap: () {
              print("Card Tıklandı");
            },
            child: Card(
              // ignore: prefer_const_literals_to_create_immutables
              child: SizedBox(
                height: 50,
                child: Row(children: const [
                  Text("Card Tasarım"),
                  Spacer(),
                  Icon(Icons.more_vert)
                ]),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              print("Container Tıklandı.");
            },
            child: Container(
              height: 50,
              color: Colors.red,
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Merhaba",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
