// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_begin/BottomNavigationBar/SayfaBir.dart';
import 'package:flutter_begin/BottomNavigationBar/SayfaIki.dart';
import 'package:flutter_begin/BottomNavigationBar/SayfaUc.dart';

class DrawerKullanimi extends StatefulWidget {
  const DrawerKullanimi({super.key});

  @override
  State<DrawerKullanimi> createState() => _DrawerKullanimiState();
}

class _DrawerKullanimiState extends State<DrawerKullanimi> {
  var sayfaListesi = [SayfaBir(), SayfaIki(), SayfaUc()];
  var secilenIndeks = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer Kullanimi"),
      ),
      body: sayfaListesi[secilenIndeks],
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.red,
            ),
            child: Text(
              "Başlık Tasarımı",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
          ListTile(
            title: Text(
              "Sayfa Bir",
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
            onTap: () {
              setState(() {
                secilenIndeks = 0;
              });
              Navigator.pop(context);
            },
            leading: Icon(
              Icons.looks_one_outlined,
              color: Colors.red,
            ),
          ),
          ListTile(
            title: Text(
              "Sayfa İki",
              style: TextStyle(color: Colors.black54, fontSize: 20),
            ),
            onTap: () {
              setState(() {
                secilenIndeks = 1;
              });
              Navigator.pop(context);
            },
            leading: Icon(
              Icons.looks_two_outlined,
              color: Colors.lightGreen,
            ),
          ),
          ListTile(
            title: Text(
              "Sayfa Üç",
              style: TextStyle(color: Colors.black45, fontSize: 15),
            ),
            onTap: () {
              setState(() {
                secilenIndeks = 2;
              });
              Navigator.pop(context);
            },
            leading: Icon(
              Icons.looks_3_outlined,
              color: Colors.orange,
            ),
          )
        ],
      )),
    );
  }
}
