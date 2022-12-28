use cdm_uts_bdl;
UPDATE peminjam
SET denda=2000, tglKembali="2022-12-04" WHERE idPeminjam=1 AND tglKembali="0000-01-01";