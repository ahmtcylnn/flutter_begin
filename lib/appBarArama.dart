import 'package:flutter/material.dart';

class appBarArama extends StatefulWidget {
  const appBarArama({super.key});

  @override
  State<appBarArama> createState() => _appBarAramaState();
}

class _appBarAramaState extends State<appBarArama> {
  bool aramaYapiliyorMu = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: aramaYapiliyorMu
            ? TextField(
                decoration: const InputDecoration(
                  hintText: "Arama için birşey yazın",
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onChanged: ((aramaSonucu) {
                  print("Arama Sonucu : $aramaSonucu");
                }),
              )
            : const Text("AppBar Arama"),
        actions: [
          aramaYapiliyorMu
              ? IconButton(
                  onPressed: (() {
                    setState(() {
                      aramaYapiliyorMu = false;
                    });
                  }),
                  icon: const Icon(Icons.cancel),
                )
              : IconButton(
                  onPressed: (() {
                    setState(() {
                      aramaYapiliyorMu = true;
                    });
                  }),
                  icon: const Icon(Icons.search),
                )
        ],
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [],
      )),
    );
  }
}
