import 'package:flutter/material.dart';

// ignore: camel_case_types
class formKullanimi extends StatelessWidget {
  formKullanimi({super.key});

  var formKey = GlobalKey<FormState>();
  var tfKullaniciAdi = TextEditingController();
  var tfSifre = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forms"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: tfKullaniciAdi,
                    decoration:
                        const InputDecoration(hintText: "Kullanıcı Adı"),
                    validator: (tfGirdisi) {
                      if (tfGirdisi!.isEmpty) {
                        return "Kullanıcı Adı Giriniz.";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: tfSifre,
                    obscureText: true,
                    decoration: const InputDecoration(hintText: "Şifre"),
                    validator: (tfGirdisi) {
                      if (tfGirdisi!.isEmpty) {
                        return "Şifre Giriniz.";
                      }
                      if (tfGirdisi.length < 6) {
                        return "Şifreniz En Az 6 Haneli Olmalıdır.";
                      }
                      return null;
                    },
                  ),
                  ElevatedButton(
                    child: const Text("Giriş"),
                    onPressed: () {
                      bool kontrolSonucu = formKey.currentState!.validate();
                      if (kontrolSonucu) {
                        String ka = tfKullaniciAdi.text;
                        String s = tfSifre.text;
                        print("Kullanıcı adı : $ka - Şifre : $s");
                      }
                    },
                  )
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
