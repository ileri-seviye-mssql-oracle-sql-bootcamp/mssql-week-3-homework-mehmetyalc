
SELECT isim,soyad,MAX(adet) AS 'ADET',MAX(tblSiparisDetay.toplam) AS 'TOPLAM' FROM tblSiparisDetay 
  INNER JOIN tblSiparis ON tblSiparisDetay.faturaKod=tblSiparis.faturaKod
  INNER JOIN tblKullanici ON tblSiparis.kullaniciKod=tblKullanici.kullaniciKod
  WHERE siparisDurumKod <> 10 AND isim LIKE 'A%' AND soyad LIKE '%AK'
  GROUP BY isim,soyad,adet,tblSiparisDetay.toplam ORDER BY adet,tblSiparisDetay.toplam DESC

  