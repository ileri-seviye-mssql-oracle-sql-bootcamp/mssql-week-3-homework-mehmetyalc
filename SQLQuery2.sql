/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (100) [kullaniciKod]
      ,[isim]
      ,[soyad]
      ,[ToplamUrun]
  FROM [Dukkan].[dbo].[kisiBasiSatis]

  SELECT isim,soyad,toplamurun from [dbo].[kisiBasiSatis] order by ToplamUrun desc