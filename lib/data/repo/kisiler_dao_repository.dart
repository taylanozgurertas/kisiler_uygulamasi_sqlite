import 'package:kisiler_uygulamasi/data/entity/kisiler.dart';
import 'package:kisiler_uygulamasi/sqlite/veritabani_yardimcisi.dart';

class KisilerDaoRepository{

  Future<void> kaydet(String kisi_ad, String kisi_tel) async{
    print("Kişi Kaydet: $kisi_ad - $kisi_tel");
  }

  Future<void> guncelle(int kisi_id, String kisi_ad, String kisi_tel) async {
    print("Kişi Güncelle: $kisi_id - $kisi_ad - $kisi_tel");
  }

  Future<List<Kisiler>> kisileriYukle() async{
    var db = await VeritabaniYardimcisi.veritabaniErisim(); //veritabanı erisim
    List<Map<String, dynamic>> satirlar = await db.rawQuery("SELECT * FROM kisiler"); //sorguyu calistirabiliyoruz
    //her bir satırı bir map olarak bir listeye atıyoruz
    return List.generate(satirlar.length, (index) { //tek tek bu listenin tum elemanlari icin Kisiler sınıfından nesne üretiyoruz
      var satir = satirlar[index];
      var kisi_id = satir["kisi_id"];
      var kisi_ad = satir["kisi_ad"];
      var kisi_tel = satir["kisi_tel"];
      return Kisiler(kisi_id: kisi_id, kisi_ad: kisi_ad, kisi_tel: kisi_tel); //uretilen nesnelerin verileri veritabanından almis oluyoruz yani
    });
  }

  Future<List<Kisiler>> ara(String aramaKelimesi) async{
    var kisilerListesi = <Kisiler>[];
    var k1 = Kisiler(kisi_id: 1, kisi_ad: "Ahmet", kisi_tel: "1111");
    var k2 = Kisiler(kisi_id: 2, kisi_ad: "Zeynep", kisi_tel: "2222");
    var k3 = Kisiler(kisi_id: 3, kisi_ad: "Beyza", kisi_tel: "3333");
    kisilerListesi.add(k1);
    kisilerListesi.add(k2);
    kisilerListesi.add(k3);

    Iterable<Kisiler> filtreleme = kisilerListesi.where((kisiNesnesi) {
      return kisiNesnesi.kisi_ad.toLowerCase().contains(aramaKelimesi.toLowerCase());
    });

    return filtreleme.toList();
  }

  Future<void> sil(int kisi_id) async{
    print("Kişi sil: $kisi_id");
  }



}