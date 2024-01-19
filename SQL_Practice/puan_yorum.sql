use GeziBlog

go

INSERT INTO puanlama(puan_id,puan,tarih,kul_id,yazi_id)
         VALUES(1,8,'12-16-2021',1,1)
INSERT  INTO puanlama(puan_id,puan,tarih,kul_id,yazi_id)
         VALUES(2,6,'12-21-2021',3,3)
INSERT  INTO puanlama(puan_id,puan,tarih,kul_id,yazi_id)
         VALUES(3,4,'12-15-2021',6,6)

		 go

INSERT INTO yorum(yorum_id,yorum,yorum_tarihi,yazi_id,kul_id)
         VALUES(1,'bu gezi yazisini begendim.izmir saat kulesini güzel anlatmis.','12-16-2021',1,1)
INSERT INTO yorum(yorum_id,yorum,yorum_tarihi,yazi_id,kul_id)
         VALUES(2,'gezi yazýsý güzel olmus.gazintepi güzel anlatmis.','12-21-2021',3,3)
INSERT INTO yorum(yorum_id,yorum,yorum_tarihi,yazi_id,kul_id)
         VALUES(3,'yurtdisi gezi yazisi okumak hosuma giemedi.romayi güzel anlatmamis.','12-15-2021',6,6)