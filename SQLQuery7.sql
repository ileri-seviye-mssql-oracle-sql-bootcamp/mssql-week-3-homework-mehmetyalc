
SELECT MAX(adet) AS 'SIPARIS ADET',urunkod,sehir,tblSiparisDetay.toplam FROM tblSiparisDetay 
INNER JOIN tblSiparis ON tblSiparisDetay.faturaKod=tblSiparis.faturaKod 
LEFT OUTER JOIN tblKullanici ON tblSiparis.kullaniciKod=tblKullanici.kullaniciKod
WHERE urunKod=3466 GROUP BY adet,urunkod,sehir,tblSiparisDetay.toplam ORDER BY tblSiparisDetay.toplam DESC 