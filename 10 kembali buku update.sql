use cdm_uts_bdl;
UPDATE peminjam
SET denda=4000, tglKembali="2022-12-20" WHERE idPeminjam=16 AND tglKembali="0000-01-01";