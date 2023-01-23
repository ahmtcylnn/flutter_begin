import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DetailsPage extends StatefulWidget {
  String ulkeAdi;
  // ignore: use_key_in_widget_constructors
  DetailsPage({required this.ulkeAdi});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detay Sayfası"),
      ),
      body: Center(
        child: Text(
          widget.ulkeAdi,
          style: const TextStyle(fontSize: 30, color: Colors.redAccent),
        ),
      ),
    );
  }
}
