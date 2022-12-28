use cdm_uts_bdl;

#suplai buku = menambahkan buku

DELIMITER $$
CREATE TRIGGER tambah_suplai AFTER INSERT
ON suplaibuku
FOR EACH ROW BEGIN

UPDATE buku
SET jumlahBukuTersedia = jumlahBukuTersedia + new.jumlah
WHERE idBuku = new.idBuku;

END $$
DELIMITER ;