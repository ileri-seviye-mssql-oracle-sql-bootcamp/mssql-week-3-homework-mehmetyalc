SELECT meslek,toplam FROM tblSiparis 
INNER JOIN tblKullanici ON tblSiparis.kullaniciKod=tblKullanici.kullaniciKod
INNER JOIN tblMeslek ON tblKullanici.meslekKod=tblMeslek.meslekKod 
ORDER BY toplam DESC