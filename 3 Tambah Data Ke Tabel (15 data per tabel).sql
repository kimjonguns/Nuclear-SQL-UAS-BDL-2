use cdm_uts_bdl;

INSERT INTO penerbit (namaPenerbit, lokasiPenerbit) VALUES 
("Deepublish", "Jogja"),
("Bukunesia", "Jakarta"),
("Grasindo", "Jakarta"),
("Mediatama", "Jogja"),
("Twigora", "Jakarta"),
("Haru", "Jawa Timur"),
("Media Kita", "Jakarta"),
("Bentang Pustaka", "Jogja"),
("Tiga Ananda", "Jawa Tengah"),
("Bentang Belia", "Jogja"),
("Diva Press", "Jogja"),
("Stiletto", "Jogja"),
("Republika", "Jakarta"),
("Erlangga", "Jakarta"),
("Gagas Media", "Jakarta")
;

INSERT INTO kategori (kategori) VALUES 
("Politik"),("Teknologi"),("Bahasa"),("Agama"),("Sosial"),
("Budaya"),("Hukum"),("Fiksi"),("Seni"),("Pendidikan"),
("Matematika"),("Sains"),("Masakan"),("Gaya Hidup"),("Bisnis")
;

INSERT INTO buku (idPenerbit, idKategori, judulBuku, tahunTerbit, jumlahBukuTersedia) VALUES
(1,15, "Penerbangan Indonesia Di Indonesia",2019,10),
(2,8, "Kremun",2022,7),
(3,4, "Muslimah Jutek? No Way",2018,3),
(6,8, "Seyogia",2018,10),
(7,2, "Webmaster Untuk Pemula",2015,5),
(8,8, "Lupa Endonesa",2021,10),
(9,12, "Bulan",2020,3),
(13,4, "Kado Terindah Rasulullah",2013,4),
(1,2, "Metode Numerik",2021,5),
(1,2, "Projek Robotik & Aplikasi Android",2016,6),
(1,2, "Sistem Operasi",2021,9),
(1,2, "Web Dasar",2017,5),
(1,2, "Algoritma Data Mining",2017,4),
(1,2, "Analisis Data Eksploratif",2016,6),
(1,2, "Matlab E-learning",2018,3)
;

INSERT INTO jurusan (namaJurusan) VALUES
("Fisika"),("Kimia"),("Informatika"),("Sains Data"),("Bahasa Inggris"),
("Hukum"),("Ekonomi"),("Bisnis"),("Agama Islam"),("Filsafat"),
("Sistem Informasi"),("Kedokteran"),("Kebidanan"),("Kehutanan"),("Perikanan");

INSERT INTO anggota (idJurusan, namaAnggota, npm, alamatAnggota, noTelepon) VALUES
(1, "Zulkifli", "0001", "Sidoarj0", "081230641"),
(2, "Karl Marx", "0002", "Surabaya", "081230642"),
(3, "F Engels", "0003", "Mojokerto", "081230643"),
(4, "Bakunin", "0004", "Jombang", "081230644"),
(5, "Lenin", "0005", "Blitar", "081230645"),
(6, "Trosky", "0006", "Jember", "081230646"),
(7, "Che Guevara", "0007", "Solo", "081230647"),
(8, "Fidel Castro", "0008", "Sleman", "081230648"),
(9, "Peter", "0009", "Gresik", "081230649"),
(10, "Proudhon", "0010", "Kediri", "0812306410"),
(11, "Hegels", "0011", "Sidoarjo", "0812306411"),
(12, "Tan Malaka", "0012", "Blitar", "0812306412"),
(13, "Johannes", "0013", "Pasuruan", "0812306413"),
(14, "Faisal", "0014", "Sumedang", "0812306414"),
(15, "Udin", "0015", "Cibubur", "0812306415")
;