import 'package:flutter/material.dart';
import 'package:flutter_begin/Shared_Pref_Kullanimi/SayfaA.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: camel_case_types
class shared_preKullanimi extends StatefulWidget {
  const shared_preKullanimi({super.key});

  @override
  State<shared_preKullanimi> createState() => _shared_preKullanimiState();
}

class _shared_preKullanimiState extends State<shared_preKullanimi> {
  Future<void> VeriKaydi() async {
    var sp = await SharedPreferences.getInstance();

    sp.setString("ad", "Ahmet");
    sp.setInt("yas", 23);
    sp.setDouble("boy", 1.80);
    sp.setBool("bekarMi", true);

    var arkadasListe = <String>[];
    arkadasListe.add("Ece");
    arkadasListe.add("Ali");

    sp.setStringList("arkadasListe", arkadasListe);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Anasayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SayfaA(),
                      ));
                }),
                child: const Text("Geçiş Yap"))
          ],
        ),
      ),
    );
  }
}
