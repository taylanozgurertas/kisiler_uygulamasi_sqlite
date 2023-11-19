import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kisiler_uygulamasi/ui/cubit/kayit_sayfa_cubit.dart';

class KayitSayfa extends StatefulWidget {
  const KayitSayfa({Key? key}) : super(key: key);

  @override
  State<KayitSayfa> createState() => _KayitSayfaState();
}

class _KayitSayfaState extends State<KayitSayfa> {
  var tfKisiAdi = TextEditingController();
  var tfKisiTel = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Kişi Kayıt")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(controller: tfKisiAdi, decoration: const InputDecoration(hintText: "Kişi Ad"),),
              TextField(controller: tfKisiTel, decoration: const InputDecoration(hintText: "Kişi Tel"),),
              ElevatedButton(onPressed: () {
                context.read<KayitSayfaCubit>().krepo.kaydet(tfKisiAdi.text, tfKisiTel.text); //! kayit sayfası için cubit kullanımı (cubit de bunları çağırıyoruz repository de ise işlemler yapılıyor)
              }, child: const Text("Kaydet"))
            ],
          ),
        ),
      ),
    );
  }
}
