SELECT DISTINCT(meslek),tblSiparis.toplam,tblSiparisDetay.toplam AS Siparisdetaytplm FROM tblSiparisDetay 
INNER JOIN tblSiparis ON tblSiparisDetay.faturaKod=tblSiparis.faturaKod
INNER JOIN tblKullanici ON tblSiparis.kullaniciKod=tblKullanici.kullaniciKod
LEFT OUTER  JOIN tblMeslek ON tblKullanici.meslekKod=tblMeslek.meslekKod
WHERE tblSiparisDetay.toplam=0 AND tblSiparis.toplam=0

