use cdm_uts_bdl;

#trigger untuk pinjam buku

DELIMITER $$
CREATE TRIGGER pinjam_buku AFTER INSERT
ON peminjam
FOR EACH ROW BEGIN

UPDATE buku
SET jumlahBukuTersedia = jumlahBukuTersedia - new.jumlahPinjam
WHERE idBuku = new.idBuku AND jumlahBukuTersedia > 0;

END $$

DROP TRIGGER pinjam_buku;