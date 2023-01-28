import 'package:flutter/material.dart';
import 'package:flutter_begin/TabsKullanimi/Sayfa1.dart';
import 'package:flutter_begin/TabsKullanimi/Sayfa2.dart';
import 'package:flutter_begin/TabsKullanimi/Sayfa3.dart';

class main3 extends StatefulWidget {
  const main3({super.key});

  @override
  State<main3> createState() => _main3State();
}

class _main3State extends State<main3> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Tabs Kullanımı"),
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: "Bir",
                  icon: Icon(
                    Icons.looks_one,
                    color: Colors.white,
                  ),
                ),
                Tab(
                  text: "İki",
                  icon: Icon(
                    Icons.looks_two,
                    color: Colors.cyanAccent,
                  ),
                ),
                Tab(
                  text: "Üç",
                  icon: Icon(
                    Icons.looks_3,
                    color: Colors.amberAccent,
                  ),
                )
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Sayfa1(),
              Sayfa2(),
              Sayfa3(),
            ],
          )),
    );
  }
}
