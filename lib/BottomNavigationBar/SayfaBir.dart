import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SayfaBir extends StatefulWidget {
  const SayfaBir({super.key});

  @override
  State<SayfaBir> createState() => _SayfaBirState();
}

class _SayfaBirState extends State<SayfaBir> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Sayfa Bir",
        style: TextStyle(color: Colors.black54, fontSize: 30),
      ),
    );
  }
}
