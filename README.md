# kisiler_uygulamasi

Techcareer flutter 2023 bootcamp kisiler uygulamasi ornegi
SQlite calismasi yapilmis ve rehber.sqlite eklenmiş hali

SQLite sorgu notları: calismalar yaptigimiz ornek sorgulari buraya direkt atiyorum ornek olarak yaparsin yine:

-- TÜMÜ 'SQL 1' İÇERİSİNDE YÜRÜTÜLÜYOR
--
-- 1. satırda:
INSERT INFO
-- Sonuç: near "INFO": syntax error
-- TÜMÜ 'SQL 1' İÇERİSİNDE YÜRÜTÜLÜYOR
--
-- 1. satırda:
INSERT INTO urunler(urun_adi, urun_fiyati) VALUES ('Telefon', 8000)
-- Sonuç: sorgu başarıyla yürütüldü. 0ms, 1 satır etkilendi  sürdü
-- TÜMÜ 'SQL 1' İÇERİSİNDE YÜRÜTÜLÜYOR
--
-- 1. satırda:
INSERT INTO urunler(urun_adi, urun_fiyati) VALUES ('Saat', 3000)
-- Sonuç: sorgu başarıyla yürütüldü. 0ms, 1 satır etkilendi  sürdü
-- TÜMÜ 'SQL 1' İÇERİSİNDE YÜRÜTÜLÜYOR
--
-- 1. satırda:
INSERT INTO urunler(urun_adi, urun_fiyati) VALUES ('Mont', 750)
-- Sonuç: sorgu başarıyla yürütüldü. 0ms, 1 satır etkilendi  sürdü
-- TÜMÜ 'SQL 1' İÇERİSİNDE YÜRÜTÜLÜYOR
--
-- 1. satırda:
INSERT INTO urunler(urun_adi, urun_fiyati) VALUES ('Kalem', 200)
-- Sonuç: sorgu başarıyla yürütüldü. 0ms, 1 satır etkilendi  sürdü
-- TÜMÜ 'SQL 1' İÇERİSİNDE YÜRÜTÜLÜYOR
--
-- 1. satırda:
INSERT INTO urunler(urun_adi, urun_fiyati) VALUES ('TV', 8000)
-- Sonuç: sorgu başarıyla yürütüldü. 0ms, 1 satır etkilendi  sürdü
-- TÜMÜ 'SQL 1' İÇERİSİNDE YÜRÜTÜLÜYOR
--
-- 1. satırda:
INSERT INTO urunler(urun_adi, urun_fiyati) VALUES ('Gözlük', 1000)
-- Sonuç: sorgu başarıyla yürütüldü. 0ms, 1 satır etkilendi  sürdü
-- TÜMÜ 'SQL 1' İÇERİSİNDE YÜRÜTÜLÜYOR
--
-- 1. satırda:
INSERT INTO musteriler(musteri_adi, musteri_adresi) VALUES ('Ahmet', 'İSTANBUL')
-- Sonuç: sorgu başarıyla yürütüldü. 0ms, 1 satır etkilendi  sürdü
-- TÜMÜ 'SQL 1' İÇERİSİNDE YÜRÜTÜLÜYOR
--
-- 1. satırda:
INSERT INTO musteriler(musteri_adi, musteri_adresi) VALUES ('Zeynep', 'BURSA')
-- Sonuç: sorgu başarıyla yürütüldü. 0ms, 1 satır etkilendi  sürdü
-- TÜMÜ 'SQL 1' İÇERİSİNDE YÜRÜTÜLÜYOR
--
-- 1. satırda:
INSERT INTO musteriler(musteri_adi, musteri_adresi) VALUES ('Beyza', 'ANKARA')
-- Sonuç: sorgu başarıyla yürütüldü. 0ms, 1 satır etkilendi  sürdü
-- TÜMÜ 'SQL 1' İÇERİSİNDE YÜRÜTÜLÜYOR
--
-- 1. satırda:
UPDATE urunler SET urun_fiyati = 1200 WHERE urun_id=7
-- Sonuç: sorgu başarıyla yürütüldü. 0ms, 1 satır etkilendi  sürdü
-- TÜMÜ 'SQL 1' İÇERİSİNDE YÜRÜTÜLÜYOR
--
-- 1. satırda:
DELETE FROM urunler WHERE urun_id=4
-- Sonuç: sorgu başarıyla yürütüldü. 0ms, 1 satır etkilendi  sürdü
-- TÜMÜ 'SQL 1' İÇERİSİNDE YÜRÜTÜLÜYOR
--
-- 1. satırda:
SELECT * FROM urunler
-- Sonuç: 7ms içerisinde 6 tane satır döndürüldü
-- TÜMÜ 'SQL 1' İÇERİSİNDE YÜRÜTÜLÜYOR
--
-- 1. satırda:
SELECT urun_adi FROM urunler
-- Sonuç: 6ms içerisinde 6 tane satır döndürüldü
-- TÜMÜ 'SQL 1' İÇERİSİNDE YÜRÜTÜLÜYOR
--
-- 1. satırda:
SELECT urun_adi, urun_fiyati FROM urunler
-- Sonuç: 5ms içerisinde 6 tane satır döndürüldü
-- TÜMÜ 'SQL 1' İÇERİSİNDE YÜRÜTÜLÜYOR
--
-- 1. satırda:
SELECT urun_id, urun_adi, urun_fiyati FROM urunler
-- Sonuç: 5ms içerisinde 6 tane satır döndürüldü
-- TÜMÜ 'SQL 1' İÇERİSİNDE YÜRÜTÜLÜYOR
--
-- 1. satırda:
SELECT * FROM urunler WHERE urun_adi='TV'
-- Sonuç: 5ms içerisinde 1 tane satır döndürüldü
-- TÜMÜ 'SQL 1' İÇERİSİNDE YÜRÜTÜLÜYOR
--
-- 1. satırda:
SELECT * FROM urunler WHERE urun_fiyati>5000
-- Sonuç: 7ms içerisinde 3 tane satır döndürüldü
-- TÜMÜ 'SQL 1' İÇERİSİNDE YÜRÜTÜLÜYOR
--
-- 1. satırda:
SELECT * FROM urunler WHERE urun_fiyati<5000
-- Sonuç: 8ms içerisinde 3 tane satır döndürüldü
-- TÜMÜ 'SQL 1' İÇERİSİNDE YÜRÜTÜLÜYOR
--
-- 1. satırda:
SELECT * FROM urunler WHERE urun_fiyati>2000 AND urun_fiyati<9000
-- Sonuç: 8ms içerisinde 3 tane satır döndürüldü
-- TÜMÜ 'SQL 1' İÇERİSİNDE YÜRÜTÜLÜYOR
--
-- 1. satırda:
SELECT count(*) FROM urunler
-- Sonuç: 7ms içerisinde 1 tane satır döndürüldü
-- TÜMÜ 'SQL 1' İÇERİSİNDE YÜRÜTÜLÜYOR
--
-- 1. satırda:
SELECT count(*) as kayitSayisi FROM urunler
-- Sonuç: 8ms içerisinde 1 tane satır döndürüldü
-- TÜMÜ 'SQL 1' İÇERİSİNDE YÜRÜTÜLÜYOR
--
-- 1. satırda:
SELECT count(*) as kayitSayisi FROM urunler WHERE urun_fiyati>2000
-- Sonuç: 5ms içerisinde 1 tane satır döndürüldü
-- TÜMÜ 'SQL 1' İÇERİSİNDE YÜRÜTÜLÜYOR
--
-- 1. satırda:
SELECT * FROM urunler
-- Sonuç: 4ms içerisinde 6 tane satır döndürüldü
-- TÜMÜ 'SQL 1' İÇERİSİNDE YÜRÜTÜLÜYOR
--
-- 1. satırda:
SELECT * FROM urunler ORDER BY urun_adi
-- Sonuç: 12ms içerisinde 6 tane satır döndürüldü
-- TÜMÜ 'SQL 1' İÇERİSİNDE YÜRÜTÜLÜYOR
--
-- 1. satırda:
SELECT * FROM urunler ORDER BY urun_adi ASC
-- Sonuç: 10ms içerisinde 6 tane satır döndürüldü
-- TÜMÜ 'SQL 1' İÇERİSİNDE YÜRÜTÜLÜYOR
--
-- 1. satırda:
SELECT * FROM urunler ORDER BY urun_adi DESC
-- Sonuç: 17ms içerisinde 6 tane satır döndürüldü
-- TÜMÜ 'SQL 1' İÇERİSİNDE YÜRÜTÜLÜYOR
--
-- 1. satırda:
SELECT * FROM urunler ORDER BY urun_fiyati DESC
-- Sonuç: 6ms içerisinde 6 tane satır döndürüldü
-- TÜMÜ 'SQL 1' İÇERİSİNDE YÜRÜTÜLÜYOR
--
-- 1. satırda:
SELECT * FROM urunler ORDER BY urun_fiyati
-- Sonuç: 6ms içerisinde 6 tane satır döndürüldü
-- TÜMÜ 'SQL 1' İÇERİSİNDE YÜRÜTÜLÜYOR
--
-- 1. satırda:
SELECT * FROM urunler ORDER BY RANDOM()
-- Sonuç: 5ms içerisinde 6 tane satır döndürüldü
-- TÜMÜ 'SQL 1' İÇERİSİNDE YÜRÜTÜLÜYOR
--
-- 1. satırda:
SELECT * FROM urunler ORDER BY RANDOM()
-- Sonuç: 5ms içerisinde 6 tane satır döndürüldü
-- TÜMÜ 'SQL 1' İÇERİSİNDE YÜRÜTÜLÜYOR
--
-- 1. satırda:
SELECT * FROM urunler ORDER BY RANDOM()
-- Sonuç: 6ms içerisinde 6 tane satır döndürüldü
-- TÜMÜ 'SQL 1' İÇERİSİNDE YÜRÜTÜLÜYOR
--
-- 1. satırda:
SELECT * FROM urunler ORDER BY RANDOM()
-- Sonuç: 5ms içerisinde 6 tane satır döndürüldü
-- TÜMÜ 'SQL 1' İÇERİSİNDE YÜRÜTÜLÜYOR
--
-- 1. satırda:
SELECT * FROM urunler ORDER BY RANDOM() LIMIT 1
-- Sonuç: 5ms içerisinde 1 tane satır döndürüldü
-- TÜMÜ 'SQL 1' İÇERİSİNDE YÜRÜTÜLÜYOR
--
-- 1. satırda:
SELECT * FROM urunler ORDER BY RANDOM() LIMIT 2
-- Sonuç: 4ms içerisinde 2 tane satır döndürüldü
-- TÜMÜ 'SQL 1' İÇERİSİNDE YÜRÜTÜLÜYOR
--
-- 1. satırda:
SELECT * FROM urunler ORDER BY RANDOM() LIMIT 3
-- Sonuç: 9ms içerisinde 3 tane satır döndürüldü
-- TÜMÜ 'SQL 1' İÇERİSİNDE YÜRÜTÜLÜYOR
--
-- 1. satırda:
SELECT * FROM urunler LIMIT 2
-- Sonuç: 6ms içerisinde 2 tane satır döndürüldü
-- TÜMÜ 'SQL 1' İÇERİSİNDE YÜRÜTÜLÜYOR
--
-- 1. satırda:
SELECT * FROM urunler LIMIT 3
-- Sonuç: 12ms içerisinde 3 tane satır döndürüldü
-- TÜMÜ 'SQL 1' İÇERİSİNDE YÜRÜTÜLÜYOR
--
-- 1. satırda:
SELECT * FROM urunler WHERE urun_fiyati>3000 LIMIT 2
-- Sonuç: 5ms içerisinde 2 tane satır döndürüldü
-- TÜMÜ 'SQL 1' İÇERİSİNDE YÜRÜTÜLÜYOR
--
-- 1. satırda:
SELECT * FROM urunler
-- Sonuç: 6ms içerisinde 6 tane satır döndürüldü
-- TÜMÜ 'SQL 1' İÇERİSİNDE YÜRÜTÜLÜYOR
--
-- 1. satırda:
SELECT * FROM urunler WHERE urun_adi='TV'
-- Sonuç: 6ms içerisinde 1 tane satır döndürüldü
-- TÜMÜ 'SQL 1' İÇERİSİNDE YÜRÜTÜLÜYOR
--
-- 1. satırda:
SELECT * FROM urunler WHERE urun_adi='TVX'
-- Sonuç: 6ms içerisinde 0 tane satır döndürüldü
-- 1. satırda:
SELECT * FROM urunler WHERE urun_adi='TVX'
-- Sonuç: 6ms içerisinde 0 tane satır döndürüldü
-- TÜMÜ 'SQL 1' İÇERİSİNDE YÜRÜTÜLÜYOR
--
-- 1. satırda:
SELECT * FROM urunler WHERE urun_adi LIKE
-- Sonuç: 22185ms içerisinde 3 tane satır döndürüldü
-- 1. satırda:
SELECT * FROM urunler WHERE urun_adi LIKE '%a%'
-- Sonuç: 5ms içerisinde 3 tane satır döndürüldü
-- TÜMÜ 'SQL 1' İÇERİSİNDE YÜRÜTÜLÜYOR
--
-- 1. satırda:
SELECT * FROM urunler WHERE urun_adi LIKE '%ayar%'
-- Sonuç: 6ms içerisinde 1 tane satır döndürüldü
-- TÜMÜ 'SQL 1' İÇERİSİNDE YÜRÜTÜLÜYOR
--
-- 1. satırda:
SELECT * FROM urunler WHERE urun_adi LIKE '%ay%'
-- Sonuç: 8ms içerisinde 1 tane satır döndürüldü
-- TÜMÜ 'SQL 1' İÇERİSİNDE YÜRÜTÜLÜYOR
--
-- 1. satırda:
SELECT * FROM urunler WHERE urun_adi LIKE '%aa%'
-- Sonuç: 5ms içerisinde 1 tane satır döndürüldü
-- TÜMÜ 'SQL 1' İÇERİSİNDE YÜRÜTÜLÜYOR
--
-- 1. satırda:
SELECT * FROM urunler WHERE urun_adi LIKE '%at%'
-- Sonuç: 5ms içerisinde 1 tane satır döndürüldü
-- TÜMÜ 'SQL 1' İÇERİSİNDE YÜRÜTÜLÜYOR
--
-- 1. satırda:
SELECT * FROM urunler WHERE urun_adi LIKE '%%'
-- Sonuç: 6ms içerisinde 6 tane satır döndürüldü
-- TÜMÜ 'SQL 1' İÇERİSİNDE YÜRÜTÜLÜYOR
--
-- 1. satırda:
SELECT * FROM siparisler
-- Sonuç: 5ms içerisinde 2 tane satır döndürüldü
-- TÜMÜ 'SQL 1' İÇERİSİNDE YÜRÜTÜLÜYOR
--
-- 1. satırda:
SELECT * FROM siparisler,urunler,musteriler
-- Sonuç: 6ms içerisinde 36 tane satır döndürüldü
-- TÜMÜ 'SQL 1' İÇERİSİNDE YÜRÜTÜLÜYOR
--
-- 1. satırda:
SELECT * FROM siparisler,urunler,musteriler WHERE siparisler.urun_adi=urunler.urun_id AND siparisler.musteri_id=musteriler.musteri_id
-- Sonuç: no such column: siparisler.urun_adi
-- TÜMÜ 'SQL 1' İÇERİSİNDE YÜRÜTÜLÜYOR
--
-- 1. satırda:
SELECT * FROM siparisler,urunler,musteriler WHERE siparisler.urun_id=urunler.urun_id AND siparisler.musteri_id=musteriler.musteri_id
-- Sonuç: 6ms içerisinde 2 tane satır döndürüldü
-- TÜMÜ 'SQL 1' İÇERİSİNDE YÜRÜTÜLÜYOR
--
-- 1. satırda:
SELECT siparis_id, urun_adi, urun_fiyati, musteri_adi, musteri_adresi, siparis_adeti FROM siparisler,urunler,musteriler WHERE siparisler.urun_id=urunler.urun_id AND siparisler.musteri_id=musteriler.musteri_id
-- Sonuç: 9ms içerisinde 2 tane satır döndürüldü

----------------

telefon acildiginda telefona projemizdeki rehber.sqlite ı telefona kopyalamamız gerekiyor. bunun icin bir class olusturup yaptık. sqlite klasörü
açıp yaptık bunu lib içinde.