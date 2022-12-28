use cdm_uts_bdl;

INSERT INTO penerbit (idPenerbit, namaPenerbit, lokasiPenerbit) VALUES 
("pnb001","Deepublish", "Jogja"),
("pnb002","Bukunesia", "Jakarta"),
("pnb003","Grasindo", "Jakarta"),
("pnb004","Mediatama", "Jogja"),
("pnb005","Twigora", "Jakarta"),
("pnb006","Haru", "Jawa Timur"),
("pnb007","Media Kita", "Jakarta"),
("pnb008","Bentang Pustaka", "Jogja"),
("pnb009","Tiga Ananda", "Jawa Tengah"),
("pnb010","Bentang Belia", "Jogja"),
("pnb011","Diva Press", "Jogja"),
("pnb012","Stiletto", "Jogja"),
("pnb013","Republika", "Jakarta"),
("pnb014","Erlangga", "Jakarta"),
("pnb015","Gagas Media", "Jakarta")
;

INSERT INTO kategori (idKategori, kategori) VALUES 
("ktg001", "Politik"),("ktg002","Teknologi"),("ktg003","Bahasa"),("ktg004","Agama"),("ktg005","Sosial"),
("ktg006","Budaya"),("ktg007","Hukum"),("ktg008","Fiksi"),("ktg009","Seni"),("ktg010","Pendidikan"),
("ktg011","Matematika"),("ktg012","Sains"),("ktg013","Masakan"),("ktg014","Gaya Hidup"),("ktg015","Bisnis")
;

INSERT INTO buku (idPenerbit, idKategori, judulBuku, tahunTerbit, jumlahBukuTersedia) VALUES
("pnb001","ktg015", "Penerbangan Indonesia Di Indonesia",2019,10),
("pnb002","ktg008", "Kremun",2022,7),
("pnb003","ktg004", "Muslimah Jutek? No Way",2018,3),
("pnb006","ktg008", "Seyogia",2018,10),
("pnb007","ktg002", "Webmaster Untuk Pemula",2015,5),
("pnb008","ktg008", "Lupa Endonesa",2021,10),
("pnb009","ktg012", "Bulan",2020,3),
("pnb013","ktg004", "Kado Terindah Rasulullah",2013,4),
("pnb001","ktg002", "Metode Numerik",2021,5),
("pnb001","ktg002", "Projek Robotik & Aplikasi Android",2016,6),
("pnb001","ktg002", "Sistem Operasi",2021,9),
("pnb001","ktg002", "Web Dasar",2017,5),
("pnb001","ktg002", "Algoritma Data Mining",2017,4),
("pnb001","ktg002", "Analisis Data Eksploratif",2016,6),
("pnb001","ktg002", "Matlab E-learning",2018,3)
;

INSERT INTO jurusan (idJurusan, namaJurusan) VALUES
("jrs001","Fisika"),("jrs002","Kimia"),("jrs003","Informatika"),("jrs004","Sains Data"),("jrs005","Bahasa Inggris"),
("jrs006","Hukum"),("jrs007","Ekonomi"),("jrs008","Bisnis"),("jrs009","Agama Islam"),("jrs010","Filsafat"),
("jrs011","Sistem Informasi"),("jrs012","Kedokteran"),("jrs013","Kebidanan"),("jrs014","Kehutanan"),("jrs015","Perikanan");

INSERT INTO anggota (idJurusan, namaAnggota, npm, alamatAnggota, noTelepon) VALUES
("jrs001", "Zulkifli", "0001", "Sidoarjo", "081230641"),
("jrs002", "Karl Marx", "0002", "Surabaya", "081230642"),
("jrs003", "F Engels", "0003", "Mojokerto", "081230643"),
("jrs004", "Bakunin", "0004", "Jombang", "081230644"),
("jrs005", "Lenin", "0005", "Blitar", "081230645"),
("jrs006", "Trosky", "0006", "Jember", "081230646"),
("jrs007", "Che Guevara", "0007", "Solo", "081230647"),
("jrs008", "Fidel Castro", "0008", "Sleman", "081230648"),
("jrs009", "Peter", "0009", "Gresik", "081230649"),
("jrs010", "Proudhon", "0010", "Kediri", "0812306410"),
("jrs011", "Hegels", "0011", "Sidoarjo", "0812306411"),
("jrs012", "Tan Malaka", "0012", "Blitar", "0812306412"),
("jrs013", "Johannes", "0013", "Pasuruan", "0812306413"),
("jrs014", "Faisal", "0014", "Sumedang", "0812306414"),
("jrs015", "Udin", "0015", "Cibubur", "0812306415")
;