use GeziBlog

go

--ad soyad,eposta adresini listeledim
--select ad ,soyad,eposta from kullanicilar


--1 aralýk 2021 -7 aralýk 2021 arasýnda oluþturulan yazýlarýn tüm bilgilerini yayimlama tarihine göre sýraladým
--select * from yazilar where olusturma_tarihi BETWEEN '12-1-2021' and '12-15-2021' 
 -- order by yayimlama_tarihi DESC



  
--özet ,baslik ve icerik bölümnde yemek veya tatlý geçen yazýlarý listeledim
--select  *  from yazilar 
--where ozet LIKE '%yemek%' or ozet LIKE'%tatlý%' and
--baslik LIKE '%yemek%' or baslik LIKE '%tatlý%' and
--icerik LIKE '%yemek%'  or icerik LIKE '%tatlý%'