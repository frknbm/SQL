use GeziBlog

go

--ad soyad,eposta adresini listeledim
--select ad ,soyad,eposta from kullanicilar


--1 aral�k 2021 -7 aral�k 2021 aras�nda olu�turulan yaz�lar�n t�m bilgilerini yayimlama tarihine g�re s�ralad�m
--select * from yazilar where olusturma_tarihi BETWEEN '12-1-2021' and '12-15-2021' 
 -- order by yayimlama_tarihi DESC



  
--�zet ,baslik ve icerik b�l�mnde yemek veya tatl� ge�en yaz�lar� listeledim
--select  *  from yazilar 
--where ozet LIKE '%yemek%' or ozet LIKE'%tatl�%' and
--baslik LIKE '%yemek%' or baslik LIKE '%tatl�%' and
--icerik LIKE '%yemek%'  or icerik LIKE '%tatl�%'