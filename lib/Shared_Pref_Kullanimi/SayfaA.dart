import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SayfaA extends StatefulWidget {
  const SayfaA({super.key});

  @override
  State<SayfaA> createState() => _SayfaAState();
}

class _SayfaAState extends State<SayfaA> {
  Future<void> VeriOku() async {
    var sp = await SharedPreferences.getInstance();

    String ad = sp.getString("ad") ?? "isim yok";
    int yas = sp.getInt("yas") ?? 99;
    double boy = sp.getDouble("boy") ?? 1.99;
    bool bekarMi = sp.getBool("bekarMi") ?? false;

    var arkadasListe = sp.getStringList("arkadasListe") ?? ["ahmet", "mamos"];

    print("Ad: $ad");
    print("Yaş: $yas");
    print("Boy: $boy");
    print("Bekar mı?: $bekarMi");

    for (var a in arkadasListe) {
      print("Arkadaş: $arkadasListe");
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    VeriOku();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sayfa A"),
      ),
      body: const Center(),
    );
  }
}
