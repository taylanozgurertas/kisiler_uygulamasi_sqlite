import 'package:kisiler_uygulamasi/data/entity/kisiler.dart';
import 'package:kisiler_uygulamasi/sqlite/veritabani_yardimcisi.dart';

class KisilerDaoRepository{

  Future<void> kaydet(String kisi_ad, String kisi_tel) async{
    var db = await VeritabaniYardimcisi.veritabaniErisim(); //veritabanı erişim ve kaydetme islemi burada
    var yeniKisi = Map<String,dynamic>();
    yeniKisi["kisi_ad"]= kisi_ad;
    yeniKisi["kisi_tel"]= kisi_tel;

    await db.insert("kisiler", yeniKisi);
  }

  Future<void> guncelle(int kisi_id, String kisi_ad, String kisi_tel) async {
    var db = await VeritabaniYardimcisi.veritabaniErisim(); //veritabanı erişim ve guncelleme islemi burada
    var guncellenenKisi = Map<String,dynamic>();
    guncellenenKisi["kisi_ad"]= kisi_ad;
    guncellenenKisi["kisi_tel"]= kisi_tel;

    await db.update("kisiler", guncellenenKisi, where: "kisi_id = ?", whereArgs: [kisi_id]); //whereArgs deki kisi_id otomatik olarak ? yerine geçecek
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
    var db = await VeritabaniYardimcisi.veritabaniErisim(); //veritabanı erisim arama islemi yapicaz burda
    List<Map<String, dynamic>> satirlar = await db.rawQuery("SELECT * FROM kisiler WHERE kisi_ad like '%$aramaKelimesi%'"); //sorguyu calistirabiliyoruz
    //her bir satırı bir map olarak bir listeye atıyoruz
    return List.generate(satirlar.length, (index) { //tek tek bu listenin tum elemanlari icin Kisiler sınıfından nesne üretiyoruz
      var satir = satirlar[index];
      var kisi_id = satir["kisi_id"];
      var kisi_ad = satir["kisi_ad"];
      var kisi_tel = satir["kisi_tel"];
      return Kisiler(kisi_id: kisi_id, kisi_ad: kisi_ad, kisi_tel: kisi_tel); //uretilen nesnelerin verileri veritabanından almis oluyoruz yani
    });
  }

  Future<void> sil(int kisi_id) async{
    var db = await VeritabaniYardimcisi.veritabaniErisim(); //veritabanı erişim ve silme islemi
    await db.delete("kisiler", where: 'kisi_id = ?', whereArgs: [kisi_id]);
  }



}