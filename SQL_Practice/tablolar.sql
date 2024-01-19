--create DATABASE GeziBLog

use GeziBlog
go
create table kullanicilar(
kullanici_id int PRIMARY KEY not null,
ad nvarchar(30) not null,
soyad nvarchar(40) not null,
eposta varchar(50) not null,
sifre varchar(max) not null,
biyografi nvarchar(max) not null,
fotograf image null,
);

go 
create table mesajlasma(
m_id int PRIMARY KEY not null,
baslik varchar(50) not null,
icerik nvarchar(100) not null,
okunma_tarihi date not null,
gonderme_tarihi date not null,
gonderici_id int not null,
alici_id int not null,
CONSTRAINT FK_Gonderici FOREIGN KEY(gonderici_id) REFERENCES kullanicilar(kullanici_id),
CONSTRAINT FK_Alici FOREIGN KEY(alici_id) REFERENCES kullanicilar(kullanici_id)
);



go
create table roller(
rol_id int PRIMARY KEY not null,
rol_adi nvarchar(50) not null,
);


go
create table kullanici_rol(
kul_rol_id int PRIMARY KEY not null,
kul_id int  not null,
rol_id int not null,
CONSTRAINT FK_Kul_Rol FOREIGN KEY(kul_id) REFERENCES  kullanicilar(kullanici_id),
CONSTRAINT FK_Rol FOREIGN KEY(rol_id) REFERENCES roller(rol_id)
);




go
create table yazilar(
yazi_id int PRIMARY KEY not null,
baslik nvarchar(max) not null,
ozet nvarchar(max) not null,
icerik nvarchar(max) not null,
olusturma_tarihi date not null,
guncelleme_tarihi date not null,
yayimlama_tarihi date not null,
kul_id  int not null,
CONSTRAINT FK_Kullanici FOREIGN KEY(kul_id) REFERENCES kullanicilar(kullanici_id)
);
go
create table yorum(
yorum_id int PRIMARY KEY not null,
yorum nvarchar(150) not null,
yorum_tarihi date not null,
yazi_id int not null,
kul_id int not null,
CONSTRAINT FK_Yorum_Yazi FOREIGN KEY(yazi_id) REFERENCES yazilar(yazi_id),
CONSTRAINT FK_Yorum_Kul FOREIGN KEY(kul_id) REFERENCES kullanicilar(kullanici_id)
);
go
create table puanlama(
puan_id int PRIMARY KEY not null,
puan int not null,
tarih date not null,
kul_id int not null,
yazi_id int not null,
  CONSTRAINT FK_Kul FOREIGN KEY(kul_id) REFERENCES kullanicilar(kullanici_id),
   CONSTRAINT FK_Puan_Yaz   FOREIGN KEY(yazi_id) REFERENCES yazilar(yazi_id)
);
go
create table kategori(
kat_id int PRIMARY KEY not null,
kat_adi nvarchar(30) not null,
);

go
create table kategori_yazi(
kat_yaz_id int PRIMARY KEY not null,
yazi_id int not null,
kat_id int not null,
CONSTRAINT FK_Yaz FOREIGN KEY(yazi_id) REFERENCES yazilar(yazi_id),
CONSTRAINT FK_Kat FOREIGN KEY(kat_id) REFERENCES kategori(kat_id)
);

go
create table etiket(
etiket_id int PRIMARY KEY not null,
anahtar_kelime varchar(30) not null,
);

go
create table etiket_yazi(
eti_yaz_id int PRIMARY KEY not null,
yazi_id int not null,
etiket_id int not null
CONSTRAINT FK_Etiket_Yaz FOREIGN KEY(yazi_id) REFERENCES yazilar(yazi_id),
CONSTRAINT FK_Etiket FOREIGN KEY(etiket_id) REFERENCES etiket(etiket_id)
);




