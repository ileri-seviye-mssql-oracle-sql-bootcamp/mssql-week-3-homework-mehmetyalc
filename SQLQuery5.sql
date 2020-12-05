select urunAd from tblUrun 
  INNER JOIN tblSiparisDetay ON tblUrun.urunKod=tblSiparisDetay.urunKod
  INNER JOIN tblSiparis ON tblSiparisDetay.faturaKod=tblSiparis.faturaKod
  WHERE siparisDurumKod=10 GROUP BY urunAd ORDER BY urunAd ASC
