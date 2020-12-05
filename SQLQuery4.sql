SELECT urunAd,adet,siparisTarih FROM  tblUrun
INNER JOIN tblSiparisDetay ON tblSiparisDetay.urunKod=tblUrun.urunKod
LEFT OUTER JOIN tblSiparis ON tblSiparisDetay.faturaKod=tblSiparis.faturaKod
WHERE siparisTarih BETWEEN ('2007-02-01') AND ('2014-03-05')
ORDER BY siparisTarih DESC
