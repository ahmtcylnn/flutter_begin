import 'package:flutter/material.dart';

class PopUpp extends StatelessWidget {
  const PopUpp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PopUp"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            PopupMenuButton(
              child: const Icon(Icons.open_in_new),
              itemBuilder: (context) => [
                const PopupMenuItem(
                    value: 1,
                    child: Text(
                      "Sil",
                      style: TextStyle(color: Colors.red),
                    )),
                const PopupMenuItem(
                    value: 2,
                    child: Text(
                      "Güncelle",
                      style: TextStyle(color: Colors.indigo),
                    ))
              ],
              onCanceled: (() {
                print("Seçim Yapılmadı");
              }),
              onSelected: (menuItemValue) {
                if (menuItemValue == 1) {
                  print("Sil Seçildi");
                }
                if (menuItemValue == 2) {
                  print("Güncelle Seçildi");
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
