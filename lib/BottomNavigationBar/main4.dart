// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_begin/BottomNavigationBar/SayfaBir.dart';
import 'package:flutter_begin/BottomNavigationBar/SayfaIki.dart';
import 'package:flutter_begin/BottomNavigationBar/SayfaUc.dart';

class main4 extends StatefulWidget {
  const main4({super.key});

  @override
  State<main4> createState() => _main4State();
}

class _main4State extends State<main4> {
  var sayfaListesi = [SayfaBir(), SayfaIki(), SayfaUc()];
  var secilenIndeks = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Nav Bar"),
      ),
      body: sayfaListesi[secilenIndeks],
      bottomNavigationBar: BottomNavigationBar(
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.looks_one), label: "Bir"),
          BottomNavigationBarItem(icon: Icon(Icons.looks_two), label: "İki"),
          BottomNavigationBarItem(icon: Icon(Icons.looks_3), label: "Üç"),
        ],
        backgroundColor: Colors.deepPurple,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.white,
        selectedFontSize: 18,
        currentIndex: secilenIndeks,
        onTap: (index) {
          setState(() {
            secilenIndeks = index;
          });
        },
      ),
    );
  }
}
