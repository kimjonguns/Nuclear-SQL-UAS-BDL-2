use cdm_uts_bdl;

#suplai buku - buku - penerbit
SELECT penerbit.namaPenerbit, buku.judulBuku, SUM(buku.jumlahBukuTersedia) as totalBuku FROM penerbit INNER JOIN
buku ON penerbit.idPenerbit = buku.idPenerbit INNER JOIN
suplaibuku ON buku.idBuku=suplaibuku.idBuku
GROUP BY suplaibuku.idBuku
;

#jurusan - anggota - peminjam
SELECT jurusan.namaJurusan, anggota.namaAnggota, anggota.npm, peminjam.idPeminjam, SUM(peminjam.denda) as dendaTotal FROM jurusan INNER JOIN
anggota ON jurusan.idJurusan = anggota.idJurusan INNER JOIN
peminjam ON anggota.idAnggota=peminjam.idAnggota
GROUP BY peminjam.idAnggota
;

#buku - peminjam
SELECT buku.judulBuku, buku.idBuku, buku.jumlahBukuTersedia, SUM(peminjam.denda) FROM buku 
INNER JOIN peminjam ON buku.idBuku = peminjam.idBuku
group by peminjam.idBuku
;

#anggota - peminjam
select anggota.namaAnggota, SUM(peminjam.denda) from anggota INNER JOIN
peminjam ON anggota.idAnggota = peminjam.idAnggota
GROUP BY peminjam.idAnggota
;

#anggota - peminjam - buku
select anggota.namaAnggota, SUM(peminjam.denda) from anggota INNER JOIN
peminjam ON anggota.idAnggota = peminjam.idAnggota
GROUP BY peminjam.idAnggota
;

#peminjam - anggota - jurusan
select jurusan.namaJurusan, SUM(peminjam.denda) as DENDATOTAl from jurusan INNER JOIN anggota
ON jurusan.idJurusan = anggota.idJurusan INNER JOIN peminjam ON anggota.idAnggota = peminjam.idAnggota
GROUP BY jurusan.idJurusan
;