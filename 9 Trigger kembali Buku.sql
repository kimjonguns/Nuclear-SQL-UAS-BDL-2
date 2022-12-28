use cdm_uts_bdl;

DELIMITER $$
CREATE TRIGGER balik_buku AFTER UPDATE
ON peminjam
FOR EACH ROW BEGIN

UPDATE buku
SET jumlahBukuTersedia = jumlahBukuTersedia + new.jumlahPinjam
WHERE idBuku = new.idBuku;

END $$