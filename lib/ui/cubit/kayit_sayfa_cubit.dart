import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kisiler_uygulamasi/data/repo/kisiler_dao_repository.dart';

class KayitSayfaCubit extends Cubit<void>{
  /*
  * kayıt sayfasına git bak uygulamada sadece ad ve tel girilecek kaydet butonuna basınca kaydedecek geriye bir şey
  * döndürmeyeceği için kayıt sayfasının cubitini void olarak belirliyoruz arayüzünde bir güncelleme olmayacak sayfanın
  * sadece işlem yapacak. cubit kullanmayadabilirdik ancak ileriye dönük çalışmalar yapıyoruz artık hep
  * */

  KayitSayfaCubit():super(0);
  var krepo = KisilerDaoRepository();

  Future<void> kaydet(String kisi_ad, String kisi_tel) async{
    await krepo.kaydet(kisi_ad, kisi_tel);
  }


}